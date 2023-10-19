import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:registerr2/views/app/components/my_button.dart';
import 'package:registerr2/views/app/components/my_textField.dart';
import 'package:registerr2/views/app/components/squareTile.dart';

import '../app/auth/firebasee_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService authService = AuthService();
  // void registerWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser!.authentication;
  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //     final UserCredential authResult =
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //     final User user = authResult.user!;

  //     final userName = user.displayName;
  //   } catch (error) {
  //     print("Ошибка при входе с Google: $error");
  //   }
  // }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: userNameController,
                hinText: 'UserName',
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hinText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password',
                        style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                ontap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      onPressed: authService.signinWithGoogle,
                      child:
                          SquareTile(imagePath: 'assets/images/Googlee.png')),
                  const SizedBox(width: 25),
                  SquareTile(imagePath: 'assets/images/apple.png')
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Not a number?',
                    style: TextStyle(color: Colors.grey[700])),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
