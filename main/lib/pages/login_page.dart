import 'package:flutter/material.dart';
import 'package:main/components/my_button.dart';
import 'package:main/components/my_textfield.dart';
import 'package:main/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign in user method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 196, 196),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  // Say Hello
                  const SizedBox(height: 50),
                  const Text(
                    "Welcome back you've been missed!",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),

                  // Username textfield
                  const SizedBox(height: 70),
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obsecureText: false,
                  ),

                  // Password textfield
                  const SizedBox(height: 30),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obsecureText: true,
                  ),

                  // forgot password
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 112, 112, 112)),
                        ),
                      ],
                    ),
                  ),

                  // sign in button
                  const SizedBox(height: 20),

                  // Remove const from MyButton
                  MyButton(
                    onTap: signUserIn, // Use the method signUserIn
                  ),

                  // or continue with
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 98, 97, 97),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text("Or continue with"),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 112, 112, 112),
                          ),
                        )
                      ],
                    ),
                  ),

                  // google sign
                  const SizedBox(height: 20),
                  const SquareTile(imagePath: 'assets/images/google.png'),

                  // register
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112)),
                      ),
                      SizedBox(width: 5),
                      Text("Register Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 39, 112, 246))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
