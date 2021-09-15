import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../../../custom_icons_icons.dart';

class WeightTracker extends StatefulWidget {
  const WeightTracker({Key? key}) : super(key: key);

  @override
  _WeightTrackerState createState() => _WeightTrackerState();
}

class _WeightTrackerState extends State<WeightTracker> {
  double? newValue = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            CustomIcons.back_return,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: RichText(
            text: TextSpan(
                text: 'PESO\n',
                style: TextStyle(
                  color: Color(0xff79dd72),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'hoy 11:00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  )
                ]),
            textAlign: TextAlign.center,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$newValue' + ' KG',
            style: TextStyle(
                color: Color(0xff79dd72),
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          Stack(children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  )),
              height: 120,
              child: HorizontalPicker(
                minValue: 0,
                maxValue: 150,
                divisions: 1500,
                cursorColor: Colors.lightBlue,
                suffix: " KG",
                showCursor: false,
                backgroundColor: Colors.white60,
                activeItemTextColor: Colors.black,
                passiveItemsTextColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    newValue = value;
                  });
                },
              ),
            ),
            Center(
                child: Icon(
              Icons.arrow_drop_down_sharp,
              size: 72,
              color: Color(0xff79dd72),
            ))
          ]),
        ],
      ),
    );
  }
}
