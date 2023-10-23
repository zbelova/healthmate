// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_local_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EntryLocalDtoAdapter extends TypeAdapter<EntryLocalDto> {
  @override
  final int typeId = 0;

  @override
  EntryLocalDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EntryLocalDto(
      date: fields[0] as DateTime,
      filePaths: (fields[1] as List).cast<String>(),
      medications: (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, EntryLocalDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.filePaths)
      ..writeByte(2)
      ..write(obj.medications);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EntryLocalDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
