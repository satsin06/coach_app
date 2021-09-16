import 'package:flutter/material.dart';

class DietTile extends StatelessWidget {
  const DietTile({Key? key, this.text = ""}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[400],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ),
            )),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Container(
              child: Card(
                color: Colors.grey,
              ),
            );
          }),
        ),
      ),
    ]);
  }
}
