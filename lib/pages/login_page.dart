import 'package:flutter/material.dart';
import 'package:food/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Food Delivery App',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false),
        ],
      ),
    );
  }
}
