import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 30,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    padding: EdgeInsets.only(left: 50),
                    child: Center(
                      child: Text("AJUSTES",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Idioma',
                      style: TextStyle(
                        fontSize: 15,
                          color: Colors.grey.shade600
                      )),
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Center(child: Container(child: Text('Español',style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600
                      )))))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Selección de Unidades",
                        style: TextStyle(
                            fontSize: 17,
                        )),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Unidades de peso',
                            style: TextStyle(
                                color: Colors.grey.shade600
                            )),
                        ToggleSwitch(
                          minHeight: 28,
                          minWidth: 50.0,
                          initialLabelIndex: 0,
                          activeBgColor: [Colors.green],
                          inactiveBgColor: Colors.white,
                          borderColor: [Colors.grey],
                          borderWidth: 1,
                          labels: [
                            'kg',
                            'lb',
                          ],
                          totalSwitches: 2,
                          onToggle: (index) {
                            print('Switched to: $index');
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Unidades de altura',
                            style: TextStyle(
                                color: Colors.grey.shade600
                            )),
                        ToggleSwitch(
                          minHeight: 28,
                          minWidth: 50.0,
                          initialLabelIndex: 0,
                          activeBgColor: [Colors.green],
                          inactiveBgColor: Colors.white,
                          borderColor: [Colors.grey],
                          borderWidth: 1,
                          labels: [
                            'Cm',
                            'Inch',
                          ],
                          totalSwitches: 2,
                          onToggle: (index) {
                            print('Switched to: $index');
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
