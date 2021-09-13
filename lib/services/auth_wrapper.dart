import 'package:coach_app/Screens/auth/signin.dart';
import 'package:coach_app/Screens/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coach_app/model/user_model.dart';

import 'auth_service.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? SignInPage() : Test();
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