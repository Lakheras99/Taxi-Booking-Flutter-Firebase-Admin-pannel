import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              const Text(
                'Create a user\'s account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      TextField(decoration: InputDecoration(
                        enabledBorder: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(10)
                        ),
                      ),
                        controller: nameTextEditingController,
                        keyboardType: TextInputType.text,


                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
