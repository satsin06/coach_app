import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../custom_icons_icons.dart';

class TrainingTile extends StatelessWidget {
  const TrainingTile({Key? key,
    this.alpha1 = "",
    this.alpha2 = "",
    this.text = "",
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.texta = "",
  }) : super(key: key);
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String texta;
  final String alpha1;
  final String alpha2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Stack(children: [
            Icon(
              CustomIcons.twocirclestrip,
              size: 160,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(64, 18, 0, 0),
              child: Text(
                alpha1,
                style:
                TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(64, 110, 0, 0),
              child: Text(
              alpha2,
                style:
                TextStyle(fontSize: 32, color: Colors.white),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,24, 80, 0),
          child: Column(
            children: [
              RichText(
                  text: TextSpan(
                      text: text + '\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                      children: [
                        TextSpan(
                          text: text1 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: text2 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: text3 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                      ])),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: texta + '\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                      children: [
                        TextSpan(
                          text: text1 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: text2 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: text3 + '\n',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                      ])),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Column(
            children: [
              RoundCheckBox(
                onTap: (selected) {},
                size: 30,
                uncheckedColor: Colors.white,
              ),
              SizedBox(height: 40,),
              RoundCheckBox(
                onTap: (selected) {},
                size: 30,
                uncheckedColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
