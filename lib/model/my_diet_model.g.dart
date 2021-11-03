// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_diet_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyDietModelAdapter extends TypeAdapter<MyDietModel> {
  @override
  final int typeId = 0;

  @override
  MyDietModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyDietModel()
      ..name = fields[0] as String
      ..weight = fields[1] as double
      ..kcal = fields[2] as double;
  }

  @override
  void write(BinaryWriter writer, MyDietModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.weight)
      ..writeByte(2)
      ..write(obj.kcal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyDietModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
