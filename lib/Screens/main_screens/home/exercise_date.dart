import 'package:coach_app/widget/progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../custom_icons_icons.dart';
import 'exercise.dart';

class ExerciseDate extends StatefulWidget {

  @override
  State<ExerciseDate> createState() => _ExerciseDateState();
}

class _ExerciseDateState extends State<ExerciseDate> {
  late String _dateCount;
  late String _range;

  @override
  void initState() {
    _dateCount = '';
    _range = '';
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Image.asset("assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'RETO',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                              children: [
                                TextSpan(
                                  text: 'GL??TEO',
                                  style: TextStyle(
                                      color: Color(0xff79dd72),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                )
                              ])),
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
                  ),
                ),
              ),
              SfDateRangePicker(
                //onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Avance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  Text('8.5%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)
                ],
              ),
              SizedBox(height: 10,),
              ProgressBar(
                  max: 100, current: 6, color: Color(0xff79dd72),
              ),
              SizedBox(height: 100,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercise()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(240, 40),
                    primary: Color(0xff79dd72),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(15)),
                    // side: BorderSide(
                    //   color: Colors.green.shade500,
                    //   width: 2.5,
                    // )
                  ),
                  child: Text(
                    "INICO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      //fontWeight: FontWeight.w800
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
