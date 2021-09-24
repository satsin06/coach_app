import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


enum LoginScreen {
  SHOW_MOBILE_FORM_WIDGET,
  SHOW_OTP_FORM_WIDGET
}

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController  phoneController = TextEditingController();
  TextEditingController  otpController = TextEditingController();
  LoginScreen currentState = LoginScreen.SHOW_MOBILE_FORM_WIDGET;
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationID = "";



  void signOut() async{
    await _auth.signOut();
  }
  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async
  {

    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if(authCred.user != null)
      {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => BottomBar()));
      }
    } on FirebaseAuthException catch (e) {

      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Some Error Occurred. Try Again Later')));
    }
  }


  showMobilePhoneWidget(context){
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text("Verify Your Phone Number" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff79dd72),),),
            SizedBox(height: 7,),
            SizedBox(height: 20,),
            Center(
              child:       TextField(
                controller: phoneController,
                style: TextStyle(
                    color: Colors.white
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
                    hintStyle: TextStyle(color: Colors.white,),
                    hintText: "Enter Your PhoneNumber"
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()  async{
              await _auth.verifyPhoneNumber(

                  phoneNumber: "+91${phoneController.text}",
                  verificationCompleted: (phoneAuthCredential) async{


                  },
                  verificationFailed: (verificationFailed){
                    print(verificationFailed);
                  },

                  codeSent: (verificationID, resendingToken) async{
                    setState(() {

                      currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
                      this.verificationID = verificationID;
                    });
                  },
                  codeAutoRetrievalTimeout: (verificationID) async{

                  }
              );
            }, child: Text("Send OTP", style: TextStyle(
                color: Color(0xff627674), fontWeight: FontWeight.normal),), style: ElevatedButton.styleFrom(
              primary: Color(0xff79dd72),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),),
            SizedBox(height: 16,),
            Spacer()
          ],
        ),
      ),
    );
  }


  showOtpFormWidget(context){
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text("ENTER YOUR OTP" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff79dd72),),),
          SizedBox(height: 7,),
          SizedBox(height: 20,),
          Center(
            child:       TextField(
              style: TextStyle(
                  color: Colors.white
              ),
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
                  hintStyle: TextStyle(color: Colors.white,),
                  hintText: "Enter Your OTP"
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);
            signInWithPhoneAuthCred(phoneAuthCredential);
          }, child: Text("Verify",style: TextStyle(
              color: Color(0xff627674), fontWeight: FontWeight.normal),),style: ElevatedButton.styleFrom(
            primary: Color(0xff79dd72),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),),
          SizedBox(height: 16,),
          Spacer()
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentState == LoginScreen.SHOW_MOBILE_FORM_WIDGET ? showMobilePhoneWidget(context) : showOtpFormWidget(context),
    );
  }
}
