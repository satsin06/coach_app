import 'package:coach_app/model/my_diet_model.dart';
import 'package:flutter/material.dart';

class AddFoodDialog extends StatefulWidget {
  final MyDietModel? myDietFood;
  final Function(String name, double weight, double kcal) onClickedDone;

  const AddFoodDialog({Key? key, this.myDietFood, required this.onClickedDone}) : super(key: key);

  @override
  _AddFoodDialogState createState() => _AddFoodDialogState();
}

class _AddFoodDialogState extends State<AddFoodDialog> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final weightController = TextEditingController();
  final kcalController = TextEditingController();
  @override
  void initState() {
    super.initState();

    if (widget.myDietFood != null) {
      final myDietFood = widget.myDietFood!;

      nameController.text = myDietFood.name;
      weightController.text = myDietFood.weight.toString();
      kcalController.text = myDietFood.kcal.toString();
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    weightController.dispose();
    kcalController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final isEditing = widget.myDietFood != null;
    final title = isEditing ? 'Edit Food' : 'Add Food';
    return AlertDialog(
      title: Text(title),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 8),
              buildName(),
              SizedBox(height: 8),
              buildWeight(),
              SizedBox(height: 8),
              buildKcal(),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        buildCancelButton(context),
        buildAddButton(context, isEditing: isEditing),
      ],
    );
  }
  Widget buildName() => TextFormField(
    controller: nameController,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Enter Name',
    ),
    validator: (name) =>
    name != null && name.isEmpty ? 'Enter a name' : null,
  );

  Widget buildWeight() => TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Enter weight',
    ),
    keyboardType: TextInputType.number,
    validator: (amount) => amount != null && double.tryParse(amount) == null
        ? 'Enter a valid number'
        : null,
    controller: weightController,
  );

  Widget buildKcal() => TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Enter kcal',
    ),
    keyboardType: TextInputType.number,
    validator: (amount) => amount != null && double.tryParse(amount) == null
        ? 'Enter a valid number'
        : null,
    controller: kcalController,
  );

  Widget buildCancelButton(BuildContext context) => TextButton(
    child: Text('Cancel'),
    onPressed: () => Navigator.of(context).pop(),
  );

  Widget buildAddButton(BuildContext context, {required bool isEditing}) {
    final text = isEditing ? 'Save' : 'Add';

    return TextButton(
      child: Text(text),
      onPressed: () async {
        final isValid = formKey.currentState!.validate();

        if (isValid) {
          final name = nameController.text;
          final weight = double.tryParse(weightController.text) ?? 0;
          final kcal = double.tryParse(kcalController.text) ?? 0;

          Navigator.of(context).pop();
        }
      },
    );
  }
}
