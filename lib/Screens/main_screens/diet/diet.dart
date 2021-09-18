import 'package:coach_app/widget/diet_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';
import '../bottom_bar.dart';
import 'loading.dart';

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
              CustomIcons.back_return,
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
                    color: Color(0xff79dd72),
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              )
            ])),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Selecciona:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ),
              Text(
                'Comidas al día',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 6,
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
                    children: List<Widget>.generate(4, (int index) {
                      return Center(
                          child: Text(
                        (2 + index).toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ));
                    }),
                  ),
                ),
              ),
              Text(
                '1300 calorías',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Macros:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '120 Carb.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '82 Prote',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '45 Grasas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              DietTile(
                text: "PROTEÍNAS",
              ),
              DietTile(
                text: "CARBOHIDRATOS",
              ),
              DietTile(
                text: "GRASAS",
              ),
              DietTile(
                text: "LÁCTEOS Y BEBIDAS",
              ),
              DietTile(
                text: "FRUTAS",
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loading()));
                },
                child: Text(
                  "CREAR DIETA",
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
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
