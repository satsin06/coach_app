import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';
import '../bottom_bar.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              cardColor: Colors.blue,
            ),
            child: PopupMenuButton(
              itemBuilder: (context) {
                return List.generate(2, (index) {
                  return PopupMenuItem(
                    child: Text(
                      'button no $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                });
              },
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
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
          child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Selecciona:', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),),
                    ],
                  ),
                ),
                Text('Comidas al día', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                ),),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 4,
                  child: Center(
                    child: CupertinoPicker(
                      useMagnifier: false,
                      itemExtent: 70,
                      scrollController:
                      FixedExtentScrollController(initialItem: 4),
                      selectionOverlay: Container(),
                      onSelectedItemChanged: (value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                      children: List<Widget>.generate(6, (int index) {
                        return Center(
                            child: Text(
                              (0 + index).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ));
                      }),
                    ),
                  ),
                ),
                Text('1300 calorías', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Macros:', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Text('120 Carb.', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Text('82 Prote', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Text('45 Grasas', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'PROTEÍNAS', style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w800),
                        ),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3 ,
                    children: List.generate(12,(index){
                      return Container(
                        child: Card(
                          color: Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'CARBOHIDRATOS', style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w800),
                        ),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3 ,
                    children: List.generate(12,(index){
                      return Container(
                        child: Card(
                          color: Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'GRASAS', style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w800),
                        ),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3 ,
                    children: List.generate(12,(index){
                      return Container(
                        child: Card(
                          color: Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'LÁCTEOS Y BEBIDAS', style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w800),
                        ),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3 ,
                    children: List.generate(12,(index){
                      return Container(
                        child: Card(
                          color: Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'FRUTAS', style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w800),
                        ),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3 ,
                    children: List.generate(12,(index){
                      return Container(
                        child: Card(
                          color: Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
