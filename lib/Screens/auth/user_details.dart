import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coach_app/Screens/auth/status.dart';
import 'package:coach_app/model/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
        controller: nameEditingController..text,
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
        controller: emailEditingController..text,
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
        controller: countryEditingController..text,
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
              'email': emailEditingController.text,
              'country': countryEditingController.text
            });
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Status()));
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
                  saveButton
                ],
              ),
            )),
      ),
    );
  }
}