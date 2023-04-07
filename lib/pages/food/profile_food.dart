import 'package:flutter/material.dart';

class ProfileFoodPage extends StatefulWidget {
  const ProfileFoodPage({super.key});

  @override
  State<ProfileFoodPage> createState() => _ProfileFoodPageState();
}

class _ProfileFoodPageState extends State<ProfileFoodPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
