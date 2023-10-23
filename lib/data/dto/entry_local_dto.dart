import 'package:hive/hive.dart';

part 'entry_local_dto.g.dart';

@HiveType(typeId: 0)
class EntryLocalDto extends HiveObject {
  @HiveField(0)
  final DateTime date;
  @HiveField(1)
  final List<String> filePaths;
  @HiveField(2)
  final List<String> medications;

  EntryLocalDto({
    required this.date,
    required this.filePaths,
    required this.medications,
  });
}
