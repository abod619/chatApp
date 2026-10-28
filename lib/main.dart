import 'package:chat_app/auth/loign_or_register.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:chat_app/views/login_page.dart';
import 'package:chat_app/views/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppChat());
}

class AppChat extends StatelessWidget {
  const AppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoignOrRegister(),
      theme: lightMode,
    );
  }
}