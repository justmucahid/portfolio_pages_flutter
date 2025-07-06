import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
            const SizedBox(height: 20),
            Text( 'Mücahit Gökçe', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Image(
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile/Profile.png'),
            ),
        ],
      ),
    );
  }
}