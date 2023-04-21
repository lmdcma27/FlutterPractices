import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/my_texfield.dart';
import 'package:loginui/components/square_tile.dart';
import 'package:loginui/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user IN method
  void signUserIn() async {
    //show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      //Wrong email
      if (e.code == 'user-not-found') {
        //show error email
        showErrorMessage('Invalid Email');

        //Wrong password
      } else if (e.code == 'wrong-password') {
        //show error password
        showErrorMessage('Invalid Password');
      }
    }
  }

  void showErrorMessage(String Error) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange,
            title: Text(
              Error,
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            Text('Welcome back you\'ve been missed!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16)),

            SizedBox(height: 20),

            MyTextField(
              controller: emailController,
              hintText: 'Username',
              obscureText: false,
            ),

            SizedBox(height: 20),

            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            MyButton(
              text: "Sign In",
              onTap: signUserIn,
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text('Or continue with'),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  onTap: () => AuthService().signInWithGoogle(),
                  imagePath: 'lib/images/googleLogo.png',
                ),
                const SizedBox(width: 10),
                SquareTile(
                  onTap: () {},
                  imagePath: 'lib/images/appleLogo.png',
                )
              ],
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
