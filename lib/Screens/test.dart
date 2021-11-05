import 'package:coach_app/model/my_diet_model.dart';
import 'package:coach_app/widget/add_food_dialog.dart';
import 'package:coach_app/widget/boxes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  void dispose() {
    Hive.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Expense Tracker'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<Box<MyDietModel>>(
        valueListenable: Boxes.getMyDietModel().listenable(),
        builder: (context, box, _) {
          final food = box.values.toList().cast<MyDietModel>();

          return buildContent(food);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddFoodDialog(
            onClickedDone: addFood,
          ),
        ),
      ),
    );
  }

  Widget buildContent(List<MyDietModel> food) {
    if (food.isEmpty) {
      return Center(
        child: Text(
          'No foods yet!',
          style: TextStyle(fontSize: 24),
        ),
      );
    } else {
      return Column(
        children: [
          SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: food.length,
              itemBuilder: (BuildContext context, int index) {
                final foods = food[index];
                return buildTransaction(context, foods);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget buildTransaction(
    BuildContext context,
    MyDietModel food,
  ) {
    final name = food.name;
    final weight = food.weight.toStringAsFixed(2) + ' g';
    final kcal = food.kcal.toStringAsFixed(2) + ' kcal';

    return Card(
      color: Colors.white,
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        title: Text(
          name,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        trailing: Column(
          children: [
            Text(
              weight,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
            ),
            Text(
              kcal,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
            ),
          ],
        ),
        children: [
          buildButtons(context, food),
        ],
      ),
    );
  }

  Widget buildButtons(BuildContext context, MyDietModel myDietFood) => Row(
        children: [
          Expanded(
            child: TextButton.icon(
              label: Text('Edit'),
              icon: Icon(Icons.edit),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddFoodDialog(
                    myDietFood: myDietFood,
                    onClickedDone: (name, weight, kcal) =>
                        editFood(myDietFood, name, weight, kcal),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              label: Text('Delete'),
              icon: Icon(Icons.delete),
              onPressed: () => deleteFood(myDietFood),
            ),
          )
        ],
      );

  Future addFood(String name, double weight, double kcal) async {
    final foods = MyDietModel()
      ..name = name
      ..weight = weight
      ..kcal = kcal;

    final box = Boxes.getMyDietModel();
    box.add(foods);
  }

  void editFood(
    MyDietModel foods,
    String name,
    double weight,
    double kcal,
  ) {
    foods.name = name;
    foods.weight = weight;
    foods.kcal = kcal;

    foods.save();
  }

  void deleteFood(MyDietModel foods) {

    foods.delete();
  }
}
