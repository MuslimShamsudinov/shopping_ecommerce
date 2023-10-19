import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registerr2/views/app/BottomNavigationBar/constants/colors.dart';
import 'package:registerr2/views/app/auth/firebasee_auth.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
          onPressed: authService.handleSignOut,
          icon: Icon(
            Icons.logout,
            color: appColor.inactiveColor,
          )),
      SizedBox(
        height: 20,
      ),
      CupertinoButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/M.jpg'),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color:appColor.inactiveColor.withOpacity(0.5),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        'Muslim',
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        FirebaseAuth.instance.currentUser!.email.toString(),
        style: const TextStyle(
          fontSize: 16.0,
          color: appColor.grey,
        ),
      )
    ]);
  }
}
