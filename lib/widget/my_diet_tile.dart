import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:roundcheckbox/roundcheckbox.dart';


class MyDietTile extends StatelessWidget {
  const MyDietTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 1st
        MyDietType(
          dietname: 'Desayuno',
          carbs: '3g',
          grasas: '6g',
          kcals: '400',
          prote: '12g',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Papa',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Pescado',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Quinua',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),

        /// 2nd
        MyDietType(
          dietname: 'Snack',
          carbs: '3g',
          grasas: '6g',
          kcals: '400',
          prote: '12g',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Papa',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Pescado',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Quinua',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),

        /// 3rd
        MyDietType(
          dietname: 'Comida',
          carbs: '3g',
          grasas: '6g',
          kcals: '400',
          prote: '12g',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Papa',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Pescado',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Quinua',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),

        /// 4th
        MyDietType(
          dietname: 'Cena',
          carbs: '3g',
          grasas: '6g',
          kcals: '400',
          prote: '12g',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Papa',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Pescado',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        MyDietFood(
          foodimage: Image.asset('assets/images/signin.PNG'),
          foodname: 'Quinua',
          foodQuantity: '3 palma (300g)',
          foodKcal: '349',
        ),
        Row(
          children: [

          ],
        )
      ],
    );
  }
}

class MyDietType extends StatelessWidget {
  const MyDietType({
    Key? key,
    this.dietname = '',
    this.kcals = '',
    this.carbs = '',
    this.prote = '',
    this.grasas = '',
  }) : super(key: key);
  final String dietname;
  final String kcals;
  final String carbs;
  final String prote;
  final String grasas;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                dietname,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.repeat_rounded,
                                    color: Colors.black,
                                  ),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      cardColor: Colors.white,
                                    ),
                                    child: PopupMenuButton(
                                      itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: Row(
                                          children: [
                                            Icon(Icons.delete),
                                            Text("Eliminar Alimento"),
                                          ],
                                        ),
                                        value: 1,
                                      ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              Icon(Icons.remove_circle_outlined),
                                              Text("Cerrar"),
                                            ],
                                          ),
                                          value: 2,
                                        )
                                        ]
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                kcals + ' kcals',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "carbs: " + carbs,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "prote: " + prote,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "grasas: " + grasas,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDietFood extends StatelessWidget {
  const MyDietFood({
    Key? key,
    required this.foodimage,
    this.foodname = "",
    this.foodQuantity = "",
    this.foodKcal = "",
  }) : super(key: key);
  final Image foodimage;
  final String foodname;
  final String foodQuantity;
  final String foodKcal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: foodimage,
          title: Text(foodname),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        foodQuantity,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        foodKcal + 'kcal',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RoundCheckBox(
                    onTap: (selected) {},
                    size: 30,
                    uncheckedColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
