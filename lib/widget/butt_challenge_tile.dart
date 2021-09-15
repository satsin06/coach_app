import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class ButtChallengeTile extends StatelessWidget {
  const ButtChallengeTile({
    Key? key,
    this.text = "",
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    required this.img,
  }) : super(key: key);
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Column(
                          children: [
                            img
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  text,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2),
                                child: Text(
                                  text1,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2),
                                child: Text(
                                  text2,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2),
                                child: Text(
                                  text3,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                RoundCheckBox(
                  onTap: (selected) {},
                  size: 30,
                  uncheckedColor: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}