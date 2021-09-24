import 'package:flutter/material.dart';

class TabStatus extends StatelessWidget {
  const TabStatus({Key? key, required this.color1, required this.color2, required this.color3, required this.color4, required this.color5, required this.color6}) : super(key: key);
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Color color6;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(0);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color1
              ),
            ),
          ),
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(1);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color2
              ),
            ),
          ),
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(2);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color3
              ),
            ),
          ),
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(3);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color4
              ),
            ),
          ),
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(5);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color5
              ),
            ),
          ),
          InkWell(
            onTap: () {DefaultTabController.of(context)!.animateTo(6);},
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: color6
              ),
            ),
          ),
        ],
      ),
    );
  }
}
