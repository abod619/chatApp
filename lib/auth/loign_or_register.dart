import 'package:chat_app/views/login_page.dart';
import 'package:chat_app/views/register_page.dart';
import 'package:flutter/material.dart';

class LoignOrRegister extends StatefulWidget {
  const LoignOrRegister({super.key});

  @override
  State<LoignOrRegister> createState() => _LoignOrRegisterState();
}

class _LoignOrRegisterState extends State<LoignOrRegister> {
  // initially , show loign page
  bool showLoginPage = true;

  // toogle between login and register page 

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages,
        
      );
    } else{
     return RegisterPage(onTap: togglePages);
    }
  }
}