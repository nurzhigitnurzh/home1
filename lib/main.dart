import 'package:flutter/material.dart';
import 'package:flutter_application_1/profilePage.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'User Profile',
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),

    );
  }
}
