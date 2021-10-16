import 'package:coach_app/Screens/auth/phone_auth.dart';
import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/Screens/tabs/tabscreens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coach_app/model/user_model.dart';

import 'auth_service.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<UserModel?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<UserModel?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final UserModel? user = snapshot.data;
            return user == null ? PhoneAuth() : BottomBar();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }
    );
  }
}