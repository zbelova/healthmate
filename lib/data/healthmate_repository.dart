import 'package:healthmate/data/healthmate_local_datasource.dart';

import 'model/entry_model.dart';

class HealthMateRepository {
  HealthMateLocalDatasource _localDatasource;

  HealthMateRepository(this._localDatasource);

  Future<void> addEntry(Entry entry) async {
    await _localDatasource.addEntry(entry);
  }

  Future<Entry> getEntry(String key) async {
    return await _localDatasource.getEntry(key);
  }

  Future<void> editEntry(Entry entry) async {
    await _localDatasource.editEntry(entry);
  }

  Future<List<Entry>> getEntriesCurrentWeek() async {
    DateTime now = DateTime.now();
    DateTime start = DateTime(now.year, now.month, now.day - now.weekday + 1);
    return await _localDatasource.getEntriesByDateRange(start, now);
  }

  Future<List<Entry>> getEntriesHistory(int weeksAgo) async{
    DateTime now = DateTime.now();
    DateTime start = DateTime(now.year, now.month, now.day - now.weekday + 1 - weeksAgo * 7);
    DateTime end = DateTime(now.year, now.month, now.day - now.weekday + 1 - (weeksAgo - 1) * 7);
    return await _localDatasource.getEntriesByDateRange(start, end);
  }

  Future<List<Entry>> getEntriesByDateRange(DateTime start, DateTime end) async {
    return await _localDatasource.getEntriesByDateRange(start, end);
  }
}
