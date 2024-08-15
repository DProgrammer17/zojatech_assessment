import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/auth/user_model.dart';
import 'package:zoja_tech_assessment/utils/assets/string_assets.dart';
import 'package:zoja_tech_assessment/utils/extensions/context_extension.dart';

mixin AuthService {
  User? userInfo;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();

  ///Validate Register Info
  void validateRegister(BuildContext context) {
    if (nameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        addressController.text.isNotEmpty &&
        registerEmailController.text.isNotEmpty &&
        registerPasswordController.text.isNotEmpty) {
      userInfo = User(
        name: nameController.text,
        phone: phoneController.text,
        address: addressController.text,
        email: registerEmailController.text,
        password: registerPasswordController.text,
      );
      register(
        context,
        userInfo ?? const User(),
      );
    }
  }

  ///Validate Login Info
  void validateLogin({
    required String email,
    required String password,
    required BuildContext context,
  }) {
    if (email.isNotEmpty && password.isNotEmpty) {
      userInfo = User(
        email: email,
        password: password,
      );
      login(
        context,
        userInfo ?? const User(),
      );
    }
  }

  ///clear out UserInfo
  void clear() => userInfo = const User(
        name: '',
        email: '',
        password: '',
      );

  void register(BuildContext context, User user) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        context.showToast(message: StringAsset.success);

        ///Navigate to Dashboard
      },
    );
  }

  void login(BuildContext context, User user) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        context.showToast(message: StringAsset.success);

        ///Navigate to Dashboard
      },
    );
  }

  void logOut() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        clear();

        ///Navigate to LoginPage
      },
    );
  }
}
