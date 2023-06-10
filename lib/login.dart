import 'package:flutter/material.dart';
import 'package:helloworld/components/my_button.dart';
import 'package:helloworld/components/my_textfield.dart';

class MyLogin extends StatefulWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              // Logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              // Text to welcome
              Text(
                'Welcome Back, We have missed you ',
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              // Username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),
              // Password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              MyButton(
                  // onTap: signuserin,
                  ),

              const SizedBox(
                height: 25,
              ),

              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  )),
                  Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 10.0),
                      child: Text(
                        'Or Continue with',
                        style: TextStyle(color: Colors.grey),
                      )),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
