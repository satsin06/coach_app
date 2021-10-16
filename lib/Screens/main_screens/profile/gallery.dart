import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Image.asset("assets/appbar.png",
            height: 25,
            fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: Center(
                      child: Text(
                        "GALERÍA",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 25,
              child: RichText(
                  text: TextSpan(
                      text: 'CHECA TU ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                      children: [
                        TextSpan(
                          text: 'PROGRESO',
                          style: TextStyle(
                              color: Color(0xff6EAD7A),
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        )
                      ])),
            ),
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              // children: images
              //     .map((image) => Image.file(image, fit: BoxFit.cover))
              //     .toList(),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.camera_enhance_rounded, size: 60,),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "Subir Foto",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

