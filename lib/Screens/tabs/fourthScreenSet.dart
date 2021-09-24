import 'package:coach_app/widget/tab_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';


class FourthScreenSet extends StatefulWidget {
  const FourthScreenSet({Key? key}) : super(key: key);

  @override
  _FourthScreenSetState createState() => _FourthScreenSetState();
}

class _FourthScreenSetState extends State<FourthScreenSet> {
  int _selectedValue1 = 0;
  int _selectedValue2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabStatus(
              color1: Color(0xff79dd72),
              color2: Color(0xff79dd72),
              color3: Color(0xff79dd72),
              color4: Color(0xff79dd72),
              color5: Colors.white,
              color6: Colors.white,
            ),
            Column(
              children: [
                Icon(
                  Icons.keyboard_return,
                  color: Color(0xff79dd72),
                  size: 72,
                ),
                Center(
                  child: Text(
                    'Peso',
                    style: TextStyle(
                      color: Color(0xff627674),
                      fontSize: 36,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Icon(
                    CustomIcons.tab4,
                    color: Color(0xff79dd72),
                    size: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 100, 0, 0),
                    child: Text(
                      '$_selectedValue1' + ' ' + 'Kg',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )
                ]),
                SizedBox(height: 20),
                Text(
                  'DESEADO',
                  style: TextStyle(
                    color: Color(0xff627674),
                    fontSize: 36,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
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
                          scrollController:
                          FixedExtentScrollController(initialItem: 50),
                          selectionOverlay: Container(),
                          onSelectedItemChanged: (value) {
                            setState(() {
                              _selectedValue1 = value;
                            });
                          },
                          children: List<Widget>.generate(100, (int index) {
                            return Center(
                                child: Text(
                                  (0 + index).toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ));
                          }),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Center(
                          child: Text(
                            '.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Expanded(
                      child: Center(
                        child: CupertinoPicker(
                          itemExtent: 70,
                          scrollController:
                          FixedExtentScrollController(initialItem: 0),
                          selectionOverlay: Container(),
                          onSelectedItemChanged: (value) {
                            setState(() {
                              _selectedValue2 = value;
                            });
                          },
                          children: List<Widget>.generate(10, (int index) {
                            return Center(
                                child: Text(
                                  (0 + index).toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ));
                          }),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: CupertinoPicker(
                          itemExtent: 70,
                          scrollController:
                          FixedExtentScrollController(initialItem: 1),
                          selectionOverlay: Container(),
                          children: const <Widget>[
                            Center(
                              child: Text(
                                'Lb',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Kg',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                          onSelectedItemChanged: (value) {
                            // setState(() {
                            //   _selectedValue3 = value;
                            // });
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
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'CONTINUAR',
                  maxLines: 1,
                  style: TextStyle(
                      color: Color(0xff627674), fontWeight: FontWeight.normal),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                primary: Color(0xff79dd72),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              //child: Text('$_selectedValue'),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
