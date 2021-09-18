import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PlanNutrition extends StatefulWidget {
  const PlanNutrition({Key? key}) : super(key: key);

  @override
  _PlanNutritionState createState() => _PlanNutritionState();
}

class _PlanNutritionState extends State<PlanNutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Genero'),
                  ToggleSwitch(
                    minWidth: 50.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.grey,
                    labels: [
                      'M',
                      'H',
                    ],
                    totalSwitches: 2,
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Altura'),
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Center(child: Container(child: Text('1.80 m'))))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Peso Actual'),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey)),
                    child: Center(child: Container(child: Text('70 kg'))),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Text(
                    'Objecto',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ToggleSwitch(
                    minWidth: 110.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.grey,
                    labels: ['Bajar', 'Mantener', 'Subir'],
                    totalSwitches: 3,
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Peso deseado'),
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Center(child: Container(child: Text('70 kg'))))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text(
                    'Velocidad',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ToggleSwitch(
                    minWidth: 110.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.grey,
                    labels: ['Acelerada', 'Recomendada', 'Lento'],
                    totalSwitches: 3,
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Calorias Objetivo'),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey)),
                    child: Center(child: Container(child: Text('2700 Kcal'))),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text('Macros'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'PROTE\n60g',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'CARBS\n140g',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'GRASAS\n30g',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.green,
                      ),
                      child: Center(
                          child: Container(child: Text('Actualizer Objetivo'))),
                    ),
                    onTap: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
