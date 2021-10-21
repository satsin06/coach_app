import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/model/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;
  String? imagePath;
  late String downloadUrl;
  final picker = ImagePicker();

  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = File(pickedFile!.path);
    });
  }


  Future cameraImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      image = File(pickedFile!.path);
    });
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }
  Future uploadImageToFirebase(BuildContext context) async {
    String fileName = basename(image!.path);
    Reference firebaseStorageRef =
    FirebaseStorage.instance.ref().child('uploads/$fileName');
    UploadTask uploadTask = firebaseStorageRef.putFile(image!);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
    taskSnapshot.ref.getDownloadURL().then(
          (value) => print("Done: $value"),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        pickImage();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      cameraImage();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  User? user = FirebaseAuth.instance.currentUser;
  UserData loggedInUser = UserData();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserData.fromMap(value.data());
      setState(() {});
    });
  }

  final _editProfileKey = GlobalKey<FormState>();

  /// editing Controller
  final nameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final countryEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    User? user = FirebaseAuth.instance.currentUser;
    final nameField = TextFormField(
        autofocus: false,
        controller: nameEditingController..text = "${loggedInUser.name}",
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{2,}$');
          if (value!.isEmpty) {
            return ("Name cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 2 Character)");
          }
          return null;
        },
        onSaved: (value) {
          nameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController..text = "${loggedInUser.email}",
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final countryField = TextFormField(
        autofocus: false,
        controller: countryEditingController..text = "${loggedInUser.country}",
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{2,}$');
          if (value!.isEmpty) {
            return ("Country cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Country(Min. 2 Character)");
          }
          return null;
        },
        onSaved: (value) {
          countryEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.panorama_photosphere_select),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Country",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final saveButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xff79dd72),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            users.doc(user!.uid).update({
              'name': nameEditingController.text,
              'imagePath': imagePath.toString(),
              'email': emailEditingController.text,
              'country': countryEditingController.text
            });
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => BottomBar()));
            //Navigator.of(context).pop();
          },
          child: Text(
            "Save",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Form(
              key: _editProfileKey,
              child: Column(
                children: [
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: CircleAvatar(
                        radius: 55,
                        child: image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(
                                  image!,
                                  width: 128,
                                  height: 128,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(50)),
                                width: 100,
                                height: 100,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey[800],
                                ),
                              ),
                      ),
                    ),
                  ),
                  Spacer(),
                  nameField,
                  SizedBox(
                    height: 40,
                  ),
                  emailField,
                  SizedBox(
                    height: 40,
                  ),
                  countryField,
                  SizedBox(
                    height: 40,
                  ),
                  saveButton,
                  Spacer(),
                  Spacer(),
                  Spacer(),
                ],
              ),
            )),
      ),
    );
  }
}
