import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class MyDietTile extends StatelessWidget {
  const MyDietTile({Key? key, this.dietname = '', this.kcals = '', this.carbs = '', this.prote = '', this.grasas ='',}) : super(key: key);
  final String dietname;
  final String kcals;
  final String carbs;
  final String prote;
  final String grasas;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                dietname,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.repeat_rounded,
                                    color: Colors.black,
                                  ),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      cardColor: Colors.white,
                                    ),
                                  child: PopupMenuButton(
                                    itemBuilder: (context) {
                                      return List.generate(2, (index) {
                                        return PopupMenuItem(
                                          child: Text(
                                            'button no $index',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                kcals + ' kcals', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30,),
                              Text(
                                "carbs: " + carbs, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30,),
                              Text(
                                "prote: " + prote, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30,),
                              Text(
                                "grasas: " + grasas, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDietFood extends StatelessWidget {
  const MyDietFood({Key? key, required this.foodimage, this.foodname = "",}) : super(key: key);
  final Image foodimage;
  final String foodname;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: foodimage,
      title: Text(foodname),
      trailing: RoundCheckBox(
        onTap: (selected) {},
        size: 30,
        uncheckedColor: Colors.white,
      ),
    );
  }
}

