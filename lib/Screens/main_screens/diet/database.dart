import 'package:coach_app/Screens/main_screens/diet/recipes.dart';
import 'package:coach_app/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DataBase extends StatefulWidget {
  const DataBase({Key? key}) : super(key: key);

  @override
  _DataBaseState createState() => _DataBaseState();
}

class _DataBaseState extends State<DataBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'BASE DE ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800),
                                children: [
                                  TextSpan(
                                    text: 'DATOS',
                                    style: TextStyle(
                                        color: Color(0xff79dd72),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w800),
                                  )
                                ])),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade400,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Buscar alimentos en base de datos',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "BASE DE DATOS",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff79dd72),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {

                                },
                                child: Row(
                                  children: [
                                    Text(
                                      " FAVORITOS",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff79dd72),
                                    )
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    side: BorderSide(
                                      color: Color(0xff79dd72),
                                      width: 3,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60,),
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 20.0,
                      shrinkWrap: true,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text('Buscar\nAlimento', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              SizedBox(height: 20,),
                              Icon(CustomIcons.search_food, size: 80,),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius:
                            BorderRadius.all(Radius.circular(30.0),),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text('Crear\Alimento', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              SizedBox(height: 20,),
                              Icon(CustomIcons.create_meal, size: 100,),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius:
                            BorderRadius.all(Radius.circular(30.0),),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text('Ingreso\nRápido', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              SizedBox(height: 20,),
                              Icon(CustomIcons.quick_log, size: 80,),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius:
                            BorderRadius.all(Radius.circular(30.0),),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Recipes()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text('Recetas', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                                SizedBox(height: 20,),
                                Icon(CustomIcons.recipes, size: 80,),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0),),
                            ),
                          ),
                        ),
                      ]
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
