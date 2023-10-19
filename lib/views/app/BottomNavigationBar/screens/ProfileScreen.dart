import 'package:flutter/material.dart';
import 'package:registerr2/views/app/BottomNavigationBar/constants/colors.dart';

import 'package:registerr2/views/app/BottomNavigationBar/widgets/profile_header.dart';
import 'package:registerr2/views/app/BottomNavigationBar/widgets/profile_list_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        backgroundColor: appColor.activecolor,
        title: Text(
          'Profile',
          style: const TextStyle(color: appColor.inactiveColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.mode_edit_outlined,
                  color: Colors.black87, size: 30))
        ],
        elevation: 0.3,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ProfileHeader(),
          SizedBox(
            height: 20.0,
          ),
//     ElevatedButton(
//  style: const ButtonStyle(
//   backgroundColor: MaterialStatePropertyAll(appColor.activecolor)
//  ),
//       onPressed: (){}, child: Text('Edit Profile',style:TextStyle(color: appColor.inactiveColor))),
          Divider(),
          ProfileListItem(
              icon: Icons.shopping_cart, title: 'My orders', onTap: () {}),
          Divider(),
          ProfileListItem(
              icon: Icons.favorite, title: 'Selected', onTap: () {}),
          Divider(),
          ProfileListItem(
              icon: Icons.settings, title: 'Settings', onTap: () {}),
          Divider(),
          ProfileListItem(icon: Icons.logout, title: 'Log out', onTap: () {})
        ],
      ),
    );
  }
}
