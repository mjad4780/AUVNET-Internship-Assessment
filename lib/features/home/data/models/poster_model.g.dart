// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PosterModelAdapter extends TypeAdapter<PosterModel> {
  @override
  final int typeId = 2;

  @override
  PosterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PosterModel(
      id: fields[0] as int,
      createdAt: fields[1] as DateTime,
      image: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PosterModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PosterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
