// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_home_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResponseHomeModelAdapter extends TypeAdapter<ResponseHomeModel> {
  @override
  final int typeId = 3;

  @override
  ResponseHomeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResponseHomeModel(
      restaurants: (fields[0] as List).cast<RestaurantModel>(),
      services: (fields[1] as List).cast<ServiceModel>(),
      posters: (fields[2] as List).cast<PosterModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ResponseHomeModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.restaurants)
      ..writeByte(1)
      ..write(obj.services)
      ..writeByte(2)
      ..write(obj.posters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseHomeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
