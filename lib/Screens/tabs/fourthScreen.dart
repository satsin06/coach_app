import 'package:coach_app/Screens/tabs/fifthScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthTabScreen extends StatefulWidget {
  const FourthTabScreen({Key? key}) : super(key: key);

  @override
  _FourthTabScreenState createState() => _FourthTabScreenState();
}

class _FourthTabScreenState extends State<FourthTabScreen> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Icon(Icons.keyboard_return, color: Color(0xff79dd72), size: 72,),
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
          Image.asset(
            'assets/images/tab4.PNG',
            height: 300.0,
          ),
          Text('ACTUAL', style: TextStyle(
            color: Color(0xff627674),
            fontSize: 36,
            fontWeight: FontWeight.w200,
          ),),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Container(
                height: MediaQuery.of(context).copyWith().size.height / 6,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: CupertinoPicker(
                          itemExtent: 70,
                          scrollController: FixedExtentScrollController(initialItem: 50),
                          selectionOverlay: Container(),
                          onSelectedItemChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                          children: List<Widget>.generate(100, (int index) {
                            return Center(
                              child: Text(
                                (0 +index).toString(),style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
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
                          scrollController: FixedExtentScrollController(initialItem: 0),
                          selectionOverlay: Container(),
                          onSelectedItemChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                          children: List<Widget>.generate(10, (int index) {
                            return Center(
                              child: Text(
                                (0 +index).toString(), style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
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
                                'Lb',style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Kg', style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold),
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
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.032,
          ),
          ElevatedButton(
            onPressed: () {
              DefaultTabController.of(context)!.animateTo(4);
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
            ],
          ),
    );
  }
}
