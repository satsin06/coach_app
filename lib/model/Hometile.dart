import 'package:flutter/material.dart';

class Hometile extends StatelessWidget {
  const Hometile({
    Key? key,
    this.title = "",
    required this.img,
  }) : super(key: key);
  final String title;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image.asset(
                                  "assets/Vector.png",
                                  height: 45,
                                ),
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(20)),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: img,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
