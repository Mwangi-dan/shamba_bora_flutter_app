import 'package:flutter/material.dart';
import 'screens/loading_screen.dart'; // Updated import
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/home_screen.dart';
import 'screens/landing_screen.dart'; // New import
import 'utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shamba Bora',
      theme: ThemeData(
        primaryColor: primaryColor,
        hintColor: accentColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ).bodyMedium,
          titleTextStyle: TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ).titleLarge,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: primaryColor, // foreground (text) color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primaryColor,
          ),
        ),
      ),
      initialRoute: '/loading', // Set to loading screen
      routes: {
        '/loading': (context) => LoadingScreen(), // Loading screen route
        '/landing': (context) => LandingScreen(), // Landing screen route
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
