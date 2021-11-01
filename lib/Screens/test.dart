import 'package:coach_app/model/api_data.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Future<List<Demo>> futureFood;
  @override
  void initState() {
    super.initState();
    futureFood = fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Test'),
      ),
      body: Center(
        child: FutureBuilder<List<Demo>>(
          future: futureFood,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Demo>? data = snapshot.data;
              return Padding(
                padding: const EdgeInsets.all(28.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
          return Center(child: Container(child: Column(
            children: [
                Text(data[index].name),
                Flexible(child: Image.network(data[index].image))
            ],
          )));
         }),
              );
              //   ListView.builder(
              //     itemCount: data!.length,
              //     itemBuilder: (context, index) {
              //       return Center(child: Text(data[index].name));
              //     }
              // );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
