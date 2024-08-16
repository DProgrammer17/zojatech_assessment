import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/features/auth/auth_service.dart';

class UserService extends AuthService {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void disposeUserServiceControllers(){
    emailController.dispose();
    passwordController.dispose();
  }

  void _performLogin(BuildContext context) =>
      validateLogin(
        context: context,
        email: emailController.text,
        password: passwordController.text,
      );

  void _performLogout() => logOut();

  void _performForcedLogout() async {
    ///If app is inactive for 2 minutes it will logout
    Duration? inactivityDuration = const Duration(minutes: 2);
    Timer.periodic(
      inactivityDuration,
      (_) async {
        logOut();
        return;
      },
    );
  }
}
