import 'package:flutter/material.dart';
import 'package:food/feature/login_or_rigester/presentation/view/login_page.dart';
import 'package:food/feature/login_or_rigester/presentation/view/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
// intial,show Login page

  bool showLoginPage = true;
// toggle between login and regisetr

  void togglepage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglepage,
      );
    } else {
      return RegisterPage(
        onTap: togglepage,
      );
    }
  }
}
