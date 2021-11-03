import 'package:coach_app/model/my_diet_model.dart';
import 'package:coach_app/widget/add_food_dialog.dart';
import 'package:coach_app/widget/boxes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

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
          final myDietFoods = box.values.toList().cast<MyDietModel>();

          return buildContent(myDietFoods);
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

  Widget buildContent(List<MyDietModel> myDietFoods) {
    if (myDietFoods.isEmpty) {
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
              itemCount: myDietFoods.length,
              itemBuilder: (BuildContext context, int index) {
                final myDietFood = myDietFoods[index];
                return buildTransaction(context, myDietFood);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget buildTransaction(
    BuildContext context,
    MyDietModel myDietFood,
  ) {
    final name = myDietFood.name;
    final weight = myDietFood.weight.toStringAsFixed(2) + ' g';
    final kcal = myDietFood.kcal.toStringAsFixed(2) + ' kcal';

    return Card(
      color: Colors.white,
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        title: Text(
          name,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Column(
          children: [
            Text(
              weight,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              kcal,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        children: [
          buildButtons(context, myDietFood),
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
              onPressed: () => deleteTransaction(myDietFood),
            ),
          )
        ],
      );

  Future addFood(String name, double weight, double kcal) async {
    final transaction = MyDietModel()
      ..name = name
      ..weight = weight
      ..kcal = kcal;

    final box = Boxes.getMyDietModel();
    box.add(transaction);
    //box.put('mykey', transaction);

    // final mybox = Boxes.getTransactions();
    // final myTransaction = mybox.get('key');
    // mybox.values;
    // mybox.keys;
  }

  void editFood(
    MyDietModel myDietFood,
    String name,
    double weight,
    double kcal,
  ) {
    myDietFood.name = name;
    myDietFood.weight = weight;
    myDietFood.kcal = kcal;

    // final box = Boxes.getTransactions();
    // box.put(transaction.key, transaction);

    myDietFood.save();
  }

  void deleteTransaction(MyDietModel transaction) {
    // final box = Boxes.getTransactions();
    // box.delete(transaction.key);

    transaction.delete();
    //setState(() => transactions.remove(transaction));
  }
}
