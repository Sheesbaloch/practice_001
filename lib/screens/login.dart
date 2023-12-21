import 'package:flutter/material.dart';
import 'package:practice_001/screens/signup.dart';
import 'package:practice_001/widgets/background.dart';
import 'package:practice_001/widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTextfield(
                labelName: 'Email',
                fieldIcon: const Icon(Icons.email),
                keyboard: TextInputType.emailAddress,
                textController: emailController,
              ),
              customTextfield(
                labelName: 'Password',
                fieldIcon: const Icon(Icons.lock),
                keyboard: TextInputType.text,
                secure: true,
                textController: passwordController,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login')),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you want to register?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: const Text(
                          'Signup',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
