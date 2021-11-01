import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coach_app/Screens/auth/user_details.dart';
import 'package:coach_app/widget/tab_status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class SixthTabScreen extends StatefulWidget {
  const SixthTabScreen({Key? key}) : super(key: key);

  @override
  _SixthTabScreenState createState() => _SixthTabScreenState();
}

class _SixthTabScreenState extends State<SixthTabScreen> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    User? user = FirebaseAuth.instance.currentUser;
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
              color5: Color(0xff79dd72),
              color6: Color(0xff79dd72),
            ),
            Column(
              children: [
                Icon(Icons.keyboard_return, color: Color(0xff79dd72), size: 72,),
                Center(
                  child: Text(
                    'Edad',
                    style: TextStyle(
                      color: Color(0xff627674),
                      fontSize: 36,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
            Icon(CustomIcons.tab6, color: Color(0xff79dd72), size: 180,),
            Text('', style: TextStyle(
              color: Color(0xff627674),
              fontSize: 36,
              fontWeight: FontWeight.w200,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Container(
                height: MediaQuery.of(context).copyWith().size.height / 6,
                child: Row(
                  children: <Widget>[
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
                          children: List<Widget>.generate(86, (int index) {
                            return Center(
                                child: Text(
                                  ( 0 + index).toString(), style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
                                ),
                                ));
                          }),
                        ),
                      ),
                    ),
                    Expanded(child: Center(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('años', maxLines: 1, style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold
                        ),),
                      ),
                    )
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                users.doc(user!.uid).update({'age': '$_selectedValue'});
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    UserDetails()), (Route<dynamic> route) => false);
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
            Container(),
            Container()
          ],
        ),
      ),
    );
  }
}
