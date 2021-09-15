import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class FifthTabScreen extends StatefulWidget {
  const FifthTabScreen({Key? key}) : super(key: key);

  @override
  _FifthTabScreenState createState() => _FifthTabScreenState();
}

class _FifthTabScreenState extends State<FifthTabScreen> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.keyboard_return, color: Color(0xff79dd72), size: 72,),
              Center(
                child: Text(
                  'Altura',
                  style: TextStyle(
                    color: Color(0xff627674),
                    fontSize: 36,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
          Icon(CustomIcons.tab5, color: Color(0xff79dd72), size: 180,),
          Text('', style: TextStyle(
            color: Color(0xff627674),
            fontSize: 36,
            fontWeight: FontWeight.w200,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Container(
              height: MediaQuery.of(context).copyWith().size.height / 6,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: CupertinoPicker(
                        itemExtent: 70,
                        scrollController: FixedExtentScrollController(initialItem: 3),
                        selectionOverlay: Container(),
                        onSelectedItemChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                        children: List<Widget>.generate(8, (int index) {
                          return Center(
                              child: Text(
                                ( 7 - index).toString(), style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
                              ),
                              ));
                        }),
                      ),
                    ),
                  ),
                  Expanded(child: Center(
                    child: Text('.', style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
                    ),),
                  )),
                  Expanded(
                    child: Center(
                      child: CupertinoPicker(
                        itemExtent: 70,
                        scrollController: FixedExtentScrollController(initialItem: 31),
                        selectionOverlay: Container(),
                        onSelectedItemChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                        children: List<Widget>.generate(100, (int index) {
                          return Center(
                              child: Text(
                                ( 99 - index).toString(), style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
                              ),
                              ));
                        }),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: CupertinoPicker(
                        itemExtent: 70,
                        scrollController: FixedExtentScrollController(initialItem: 1),
                        selectionOverlay: Container(),
                        children: const <Widget>[
                          Center(
                            child: Text(
                              'ft',style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              'mts', style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                        onSelectedItemChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              DefaultTabController.of(context)!.animateTo(5);
            },
            child: Text(
              'CONTINUAR',
              style: TextStyle(
                  color: Color(0xff627674), fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff79dd72),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(),
          Container()
        ],
      ),
    );
  }
}
