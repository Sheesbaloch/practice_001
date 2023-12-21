import 'package:flutter/material.dart';
import 'package:practice_001/screens/home.dart';
import 'package:practice_001/screens/login.dart';
import 'package:practice_001/widgets/background.dart';
import 'package:practice_001/widgets/custom_textfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTextfield(
                labelName: 'Username',
                fieldIcon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
                keyboard: TextInputType.text,
                textController: usernameController,
              ),
              customTextfield(
                labelName: 'Email',
                fieldIcon: Icon(Icons.email, color: Colors.white),
                keyboard: TextInputType.emailAddress,
                textController: emailController,
              ),
              customTextfield(
                labelName: 'password',
                fieldIcon: Icon(Icons.lock, color: Colors.white),
                keyboard: TextInputType.text,
                textController: passwordController,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text('Signup')),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do you want to register?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ))
                  ],
                ),
              )
            ],
          )
        ]));
  }
}
