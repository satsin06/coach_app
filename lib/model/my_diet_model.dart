import 'package:hive/hive.dart';

part 'my_diet_model.g.dart';


@HiveType(typeId: 0)
class MyDietModel extends HiveObject {

  @HiveField(0)
  late String name;

  @HiveField(1)
  late double weight;

  @HiveField(2)
  late double kcal;
}