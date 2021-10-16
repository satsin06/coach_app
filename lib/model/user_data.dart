class UserData {
  final String? uid;
  final String? name;
  final String? imagePath;
  final String? email;
  final String? age;
  final String? country;
  final String? height;
  final String? weight;
  final String? desiredWeight;
  final String? sex;
  final String? targetCalories;

  const UserData({this.uid, this.name, this.email, this.country, this.imagePath, this.height, this.weight, this.desiredWeight, this.targetCalories, this.sex, this.age});

  /// receiving data from server
  factory UserData.fromMap(map)
  {
    return UserData(
      uid: map['uid'],
      name: map['name'],
      imagePath: map['imagePath'],
      email: map['email'],
      country: map['country'],
      height: map['height'],
      weight: map['weight'],
      desiredWeight: map['desiredWeight'],
      sex: map['sex'],
      age: map['age'],
      targetCalories: map['target calories'],
    );
  }

  /// sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'imagePath': imagePath,
      'email': email,
      'country': country,
      'height' : height,
      'weight' : weight,
      'desired weight' : desiredWeight,
      'sex' : sex,
      'age' : age,
      'target calories' : targetCalories
    };
  }

}