import 'package:flutter/material.dart';

Container CalendarStrip(int date,String weekDay, bool isActive) {
  return Container(
    height: 55,
    width: 50,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff79dd72),
                width: 2.5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Container(
            height: 33,
            width: 33,
            decoration: isActive
                ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.circle,
              color: Color(0xff79dd72),)
                : BoxDecoration(),
            child: Center(
              child: Text(
                date.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
        ),
        Text(
          weekDay,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),

      ],
    ),
  );
}