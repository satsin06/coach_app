import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

///Demo Data

Future<List<Demo>> fetchData() async {
  final response = await http
  .get(Uri.parse('https://satsin06.github.io/coachappapi/data.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Demo.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class Demo {
  final String name;
  final String type;
  final String image;

  Demo({required this.name, required this.type, required this.image});

  factory Demo.fromJson(Map<String, dynamic> json) {
    return Demo(name: json['name'], type: json['type'], image: json['image']);
  }
}

/// Proteins Data

Future<List<ProteinsModel>> fetchProteins() async {
  final response = await http
      .get(Uri.parse('https://satsin06.github.io/coachappapi/proteins.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new ProteinsModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}


class ProteinsModel {
  final String name;
  final String image;

  ProteinsModel({required this.name, required this.image});

  factory ProteinsModel.fromJson(Map<String, dynamic> json) {
    return ProteinsModel(name: json['name'], image: json['image']);
  }
}

/// Carbohydrates Data

Future<List<CarbohydratesModel>> fetchCarbohydrates() async {
  final response = await http
      .get(Uri.parse('https://satsin06.github.io/coachappapi/Carbohydrates.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new CarbohydratesModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}


class CarbohydratesModel {
  final String name;
  final String image;

  CarbohydratesModel({required this.name, required this.image});

  factory CarbohydratesModel.fromJson(Map<String, dynamic> json) {
    return CarbohydratesModel(name: json['name'], image: json['image']);
  }
}

/// Fats Data

Future<List<FatsModel>> fetchFats() async {
  final response = await http
      .get(Uri.parse('https://satsin06.github.io/coachappapi/fat.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new FatsModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}


class FatsModel {
  final String name;
  final String image;

  FatsModel({required this.name, required this.image});

  factory FatsModel.fromJson(Map<String, dynamic> json) {
    return FatsModel(name: json['name'], image: json['image']);
  }
}

/// Dairy Data

Future<List<DairyModel>> fetchDairy() async {
  final response = await http
      .get(Uri.parse('https://satsin06.github.io/coachappapi/dairy.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new DairyModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}


class DairyModel {
  final String name;
  final String image;

  DairyModel({required this.name, required this.image});

  factory DairyModel.fromJson(Map<String, dynamic> json) {
    return DairyModel(name: json['name'], image: json['image']);
  }
}


/// Fruits Data

Future<List<FruitsModel>> fetchFruits() async {
  final response = await http
      .get(Uri.parse('https://satsin06.github.io/coachappapi/fruits.json'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new FruitsModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}


class FruitsModel {
  final String name;
  final String image;

  FruitsModel({required this.name, required this.image});

  factory FruitsModel.fromJson(Map<String, dynamic> json) {
    return FruitsModel(name: json['name'], image: json['image']);
  }
}