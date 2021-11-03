import 'package:coach_app/model/my_diet_model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<MyDietModel> getMyDietModel() =>
      Hive.box<MyDietModel>('myDietFoods');
}