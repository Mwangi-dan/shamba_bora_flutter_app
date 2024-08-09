import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _register(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Perform registration
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Add SingleChildScrollView here
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 150),
              SizedBox(height: 20),
              CustomTextField(
                controller: _fullNameController,
                icon: Icons.person,
                labelText: 'Full Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _emailController,
                icon: Icons.email,
                labelText: 'E-mail',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _phoneController,
                icon: Icons.phone,
                labelText: 'Phone No',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _countryController,
                icon: Icons.location_pin,
                labelText: 'Country',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your country';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _passwordController,
                icon: Icons.lock,
                labelText: 'Password',
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _confirmPasswordController,
                icon: Icons.lock,
                labelText: 'Confirm Password',
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _register(context),
                child: Text('SIGN UP'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Already have an account? Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
