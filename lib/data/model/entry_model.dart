import 'dart:html';

import 'condtion_model.dart';

class Entry {
  final List<Condition> conditions;
  final DateTime date;
  final String key;
  final List<File> files;
  final List<String> medications;

  Entry({
    required this.conditions,
    required this.date,
    required this.key,
    required this.files,
    required this.medications,
  });
}
