import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Shamba Bora'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/logo.png', height: 150),
            SizedBox(height: 20),
            Text(
              'Welcome to Shamba Bora',
              style: headingStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('LOGIN', style: buttonTextStyle),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('SIGN UP', style: buttonTextStyle),
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor, // Use the accent color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
