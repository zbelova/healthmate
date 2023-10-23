import 'package:hive/hive.dart';

part 'condition_local_dto.g.dart';

@HiveType(typeId: 1)
class ConditionLocalDto extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int level;
  @HiveField(2)
  final List<String> symptoms;
  @HiveField(3)
  final String entryKey;

  ConditionLocalDto({
    required this.name,
    required this.level,
    required this.symptoms,
    required this.entryKey,
  });
}