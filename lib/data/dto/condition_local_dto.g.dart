// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_local_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConditionLocalDtoAdapter extends TypeAdapter<ConditionLocalDto> {
  @override
  final int typeId = 1;

  @override
  ConditionLocalDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConditionLocalDto(
      name: fields[0] as String,
      level: fields[1] as int,
      symptoms: (fields[2] as List).cast<String>(),
      entryKey: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ConditionLocalDto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.level)
      ..writeByte(2)
      ..write(obj.symptoms)
      ..writeByte(3)
      ..write(obj.entryKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionLocalDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
