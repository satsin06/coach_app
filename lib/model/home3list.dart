import 'package:flutter/material.dart';

class Hometile3 extends StatelessWidget {
  const Hometile3({
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
    return Container(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: Column(
                      children: [
                        img
                          // fit: BoxFit.fill,
                          // height: 80,
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
                              text1,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent.shade700),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
