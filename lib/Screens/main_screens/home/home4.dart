import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Container(
      //     padding: EdgeInsets.fromLTRB(40, 0, 30 , 0),
      //     child: Text("Donkey kicks",
      //       style: TextStyle(
      //         color: Colors.black
      //       ),
      //     ),
      //   ),
      //   leading: Icon(
      //     Icons.arrow_back_ios,
      //     color: Colors.black,
      //   ),
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
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
                        Text("Donkey kicks",
                        style: TextStyle(
                          fontSize: 20,

                        ),),
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
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.black,
                height: 250,
                width: 325,
                child: Center(
                  child: Text("VIDEO",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 130,
                width: 325,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //padding: EdgeInsets.fromLTRB(0, 0, 155, 0),
                      child: Text("Ver descripción del vídeo",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                        ),
                      ),
                    ),
                SizedBox(height: 20,),
                Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, 195, 0),
                  child: Text("Donkey kicks",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,

                    ),
                    ),
                ),
                //SizedBox(height: 10,),
                Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                  child: Text("6-8 resps",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                ),
                //SizedBox(height: 10,),
                Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                  child: Text('rest 30"',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w600
                    ),
                    ),
                ),
                //SizedBox(height: 10,),
                Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                  child: Text("4 sets",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w600
                    ),
                    ),
                )
                ]
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(15)),
                            side: BorderSide(
                              color: Colors.grey,
                              width: 2.5,
                            )),
                        child: Text(
                          "COMPLETADO",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
