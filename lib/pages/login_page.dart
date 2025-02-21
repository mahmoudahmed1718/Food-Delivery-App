import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_text_field.dart';
import 'package:food/pages/home_page.dart';
import 'package:food/pages/setting_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.onTap});

  final void Function()? onTap;

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false; // Manage password visibility state

  void login() {
    /*
  flii auht
  */

    // Navigate to home page
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingPage();
                }));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 10),
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(height: 25),
          Text(
            'Food Delivery App',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(height: 25),
          MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
          ),
          SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: !_isPasswordVisible, // Toggle password visibility
            iconData: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MyButton(ontab: login, text: 'Sign In'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'sign up',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
