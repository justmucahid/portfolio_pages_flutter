import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
            const SizedBox(height: 100),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image(
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile/Profile.png'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque euismod, urna eu tincidunt consectetur, nisi nisl aliquam nunc, eget aliquam massa nisl quis neque. Etiam ac facilisis nulla.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Suspendisse potenti. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Mauris accumsan, massa non consectetur condimentum, diam arcu tristique nibh, nec egestas diam elit at nulla. Quisque euismod, sem eget convallis placerat, enim libero hendrerit urna.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
        ],
      ),
    );
  }
}