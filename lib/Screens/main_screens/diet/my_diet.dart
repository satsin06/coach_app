import 'package:coach_app/widget/my_diet_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../../custom_icons_icons.dart';
import '../bottom_bar.dart';

class MyDiet extends StatelessWidget {
  const MyDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              CustomIcons.profile_edit,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BottomBar()));
            },
            icon: Icon(
              CustomIcons.home,
              color: Colors.black,
            ),
          ),
        ),
        title: RichText(
            text: TextSpan(
                text: 'MI',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
                children: [
              TextSpan(
                text: 'ENTRENAMIENTO',
                style: TextStyle(
                    color: Color(0xff6EAD7A),
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              )
            ])),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Text(
                    'Lunes 18 agosto',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '508\nconsumidas',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Stack(children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey[350],
                        child: CircleAvatar(
                          radius: 68,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(44, 52, 0, 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '1300\n',
                            style: TextStyle(
                              color: Color(0xff6EAD7A),
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Kcal rest.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff6EAD7A),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]
                          ),
                        )
                      )
                    ]),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'CARBS\n137g /300g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'PROTE\n28g /62g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'GRASAS\n20g /40g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              MyDietTile(dietname: 'Desayuno', carbs: '3g', grasas: '6g', kcals: '400', prote: '12g',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Papa',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Pescado',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Quinua',),
              ///
              ///
              MyDietTile(dietname: 'Desayuno', carbs: '3g', grasas: '6g', kcals: '400', prote: '12g',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Papa',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Pescado',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Quinua',),
              ///
              ///
              MyDietTile(dietname: 'Desayuno', carbs: '3g', grasas: '6g', kcals: '400', prote: '12g',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Papa',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Pescado',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Quinua',),
              ///
              ///
              MyDietTile(dietname: 'Desayuno', carbs: '3g', grasas: '6g', kcals: '400', prote: '12g',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Papa',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Pescado',),
              MyDietFood(foodimage: Image.asset('assets/images/signin.PNG'), foodname: 'Quinua',),
            ],
          ),
        ),
      ),
    );
  }
}
