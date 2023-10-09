import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLutter BlogApp'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Form(child: 
          Column(
            
          )),
        ),
      ),
    );
  }
}