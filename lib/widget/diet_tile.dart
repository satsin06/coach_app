import 'package:coach_app/model/api_data.dart';
import 'package:flutter/material.dart';

class DietTile extends StatefulWidget {
  const DietTile({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  State<DietTile> createState() => _DietTileState();
}

class _DietTileState extends State<DietTile> {
  late Future<List<Demo>> futureFood;
  @override
  void initState() {
    super.initState();
    futureFood = fetchData();
  }

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
                widget.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ),
            ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<Demo>>(
            future: futureFood,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Demo>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      ),
    ]);
  }
}

/// Protein
class Protein extends StatefulWidget {
  const Protein({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _ProteinState createState() => _ProteinState();
}

class _ProteinState extends State<Protein> {
  late Future<List<ProteinsModel>> futureProteins;
  @override
  void initState() {
    super.initState();
    futureProteins = fetchProteins();
  }
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
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<ProteinsModel>>(
            future: futureProteins,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProteinsModel>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      )
    ],);
  }
}

/// Carbohydrates

class Carbohydrates extends StatefulWidget {
  const Carbohydrates({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _CarbohydratesState createState() => _CarbohydratesState();
}

class _CarbohydratesState extends State<Carbohydrates> {
  late Future<List<CarbohydratesModel>> futureCarbohydrates;
  @override
  void initState() {
    super.initState();
    futureCarbohydrates = fetchCarbohydrates();
  }
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
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<CarbohydratesModel>>(
            future: futureCarbohydrates,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<CarbohydratesModel>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      )
    ],);
  }
}

/// Fats

class Fats extends StatefulWidget {
  const Fats({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _FatsState createState() => _FatsState();
}

class _FatsState extends State<Fats> {
  late Future<List<FatsModel>> futureFats;
  @override
  void initState() {
    super.initState();
    futureFats = fetchFats();
  }
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
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<FatsModel>>(
            future: futureFats,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<FatsModel>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      )
    ],);
  }
}

/// Dairy

class Dairy extends StatefulWidget {
  const Dairy({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _DairyState createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  late Future<List<DairyModel>> futureDairy;
  @override
  void initState() {
    super.initState();
    futureDairy = fetchDairy();
  }
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
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<DairyModel>>(
            future: futureDairy,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<DairyModel>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      )
    ],);
  }
}

/// Fruits

class Fruits extends StatefulWidget {
  const Fruits({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  late Future<List<FruitsModel>> futureFruits;
  @override
  void initState() {
    super.initState();
    futureFruits = fetchFruits();
  }
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
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: FutureBuilder<List<FruitsModel>>(
            future: futureFruits,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<FruitsModel>? data = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Container(
                                child: Column(
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
      )
    ],);
  }
}
