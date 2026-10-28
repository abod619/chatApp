import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  // email and pass text controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  RegisterPage({super.key, required this.onTap});

  final void Function()? onTap;

  // register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            // welcome back message
            SizedBox(height: 10),
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            // email textfield
            SizedBox(height: 16),
            MyTextfield(
              controller: _emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            //pass textfield
            SizedBox(height: 10),
            MyTextfield(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 10),
            MyTextfield(
              controller: _passwordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            SizedBox(height: 30),
            // login button
            MyButton(
              onTap: () {
                register();
              },
              buttonText: 'SignUp',
            ),

            // register now
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(width: 3),
                GestureDetector(
                  onTap: onTap,

                  child: Text(
                    'Login now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
