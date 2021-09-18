import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
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
                        Text(
                          'RECETAS',
                          style: TextStyle(
                              color: Color(0xff79dd72),
                              fontSize: 40,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade400,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Buscar receta',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: SafeArea(
                        child: SizedBox(
                          width: double.infinity,
                          child: ClipRect(
                            child: GridView(
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 360,
                                childAspectRatio: 3 / 4,
                                mainAxisExtent: 200,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 40,
                              ),
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '1',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                Container(
                                  color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '2',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                Container(
                                  color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                Container(
                                  color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '4',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                Container(
                                  color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '5',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/home3_2.png',
                            fit: BoxFit.fill,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'FILETE SALTEADO\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: [
                                TextSpan(text: 'Salmón ahumado\nEspárragos y Jitomates cherry\n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey),),
                                TextSpan(text: '255 Kcal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff79dd72)),
                                )
                              ]
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          primary: Colors.white),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/home3_2.png',
                            fit: BoxFit.fill,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'PASTA PRIMAVERA\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: [
                                  TextSpan(text: 'Pasta integral con Zanahorias\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),),
                                  TextSpan(text: '377 Kcal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff79dd72)),
                                  )
                                ]
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          primary: Colors.white),
                    ),
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
