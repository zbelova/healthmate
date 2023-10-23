import 'package:healthmate/data/dto/condition_local_dto.dart';
import 'package:healthmate/data/dto/entry_local_dto.dart';
import 'package:healthmate/data/model/entry_model.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

import 'model/condtion_model.dart';

class HealthMateLocalDatasource {
  static const String _boxName = 'entries';
  static const String _boxName2 = 'conditions';
  final Future<Box<EntryLocalDto>> _entriesBox = Hive.openBox<EntryLocalDto>(_boxName);
  final Future<Box<ConditionLocalDto>> _conditionsBox = Hive.openBox<ConditionLocalDto>(_boxName2);

  Future addEntry(final Entry entry) async {
    final box = await _entriesBox;
    await box.add(EntryLocalDto(date: entry.date, filePaths: entry.files.map((e) => e.path).toList(), medications: entry.medications));

    for (final condition in entry.conditions) {
      await addCondition(ConditionLocalDto(name: condition.name, level: condition.level, symptoms: condition.symptoms, entryKey: entry.key));
    }
  }

  Future addCondition(final ConditionLocalDto condition) async {
    final box = await _conditionsBox;
    await box.add(condition);
  }

  Future<List<Entry>> getEntry() async {
    final box = await _entriesBox;
    final List<EntryLocalDto> values = box.isNotEmpty ? box.values.toList() : [];
    final List<Entry> entries = [];
    for (final entry in values) {
      final conditions = await getConditions(entry.key);
      entries.add(Entry(conditions: conditions, date: entry.date, key: entry.key, files: entry.filePaths.map((e) => XFile(e)).toList(), medications: entry.medications));
    }
    return entries;
  }

  Future<List<Condition>> getConditions(String key) {
    return _conditionsBox.then((box) async {
      final List<ConditionLocalDto> values = box.isNotEmpty ? box.values.toList() : [];
      final List<Condition> conditions = [];
      for (final condition in values) {
        if (condition.entryKey == key) {
          conditions.add(Condition(name: condition.name, level: condition.level, symptoms: condition.symptoms, entryKey: condition.entryKey));
        }
      }
      return conditions;
    });
  }

  Future<List<Entry>> getEntriesByDateRange(DateTime start, DateTime end) async {
    final box = await _entriesBox;
    final List<EntryLocalDto> values = box.isNotEmpty ? box.values.toList() : [];
    final List<Entry> entries = [];
    for (final entry in values) {
      if (entry.date.isAfter(start) && entry.date.isBefore(end)) {
        final conditions = await getConditions(entry.key);
        entries.add(Entry(conditions: conditions, date: entry.date, key: entry.key, files: entry.filePaths.map((e) => XFile(e)).toList(), medications: entry.medications));
      }
    }
    return entries;
  }

  Future editEntry(final Entry entry) async {
    final box = await _entriesBox;
    final index = box.values.toList().indexWhere((element) => element.key == entry.key);
    await box.putAt(index, EntryLocalDto(date: entry.date, filePaths: entry.files.map((e) => e.path).toList(), medications: entry.medications));

    for (final condition in entry.conditions) {
      await editCondition(ConditionLocalDto(name: condition.name, level: condition.level, symptoms: condition.symptoms, entryKey: entry.key));
    }
  }

  Future editCondition(final ConditionLocalDto condition) async {
    final box = await _conditionsBox;
    final index = box.values.toList().indexWhere((element) => element.name == condition.name && element.entryKey == condition.entryKey);
    await box.putAt(index, condition);
  }
}
