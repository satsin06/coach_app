import 'package:coach_app/Screens/main_screens/profile/gallery.dart';
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
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/appbar.png",
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.05,),
            )
        ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.only(left: 40),
                      child: Center(
                        child: Text("PLAN NUTRICIONAL",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Genero',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )),
                  ToggleSwitch(
                    minHeight: 28,
                    minWidth: 50.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.white,
                    borderColor: [Colors.grey],
                    borderWidth: 1,
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
                  Text('Altura',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )),
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
                  Text('Peso Actual',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )),
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
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Objecto',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ToggleSwitch(
                    minWidth: 100.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.grey.shade300,
                    labels: ['Bajar', 'Mantener', 'Subir'],
                    fontSize: 12,
                    totalSwitches: 3,
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Peso deseado',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )),
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
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Velocidad',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ToggleSwitch(
                    minWidth: 100.0,
                    initialLabelIndex: 0,
                    activeBgColor: [Colors.green],
                    inactiveBgColor: Colors.grey.shade300,
                    labels: ['Acelerada', 'Recomendada', 'Lento'],
                    fontSize: 12,
                    totalSwitches: 3,
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Calorias Objetivo',
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),),
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
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Macros',
                      style: TextStyle(
                      color: Colors.grey.shade600
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'PROTE\n60g',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade700),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'CARBS\n140g',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade700),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'GRASAS\n30g',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade700),
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
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.green,
                      ),
                      child: Center(
                          child: Container(child: Text('Actualizer Objetivo'))),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Gallery(),
                        ),
                      );
                    },
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
