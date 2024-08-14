import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final String baseUrl = 'http://127.0.0.1:5000';
  // ignore: prefer_const_constructors
  final _storage = FlutterSecureStorage();

  Future<bool> register(User user) async {
    final response = await http.post(
      Uri.parse(
          '$baseUrl/auth/api/signup'), // Replace with your registration endpoint
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 201) {
      return true; // Registration successful
    } else {
      return false; // Registration failed
    }
  }

  Future<String?> login(String telephone, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'telephone': telephone,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final token = data['access_token'];
      final refreshToken = data['refresh_token'];
      await saveToken(token, refreshToken); // Save the token securely
      return token; // Return the JWT token
    } else {
      return null; // Login failed
    }
  }

  Future<void> saveToken(String accessToken, String refreshToken) async {
    try {
      await _storage.write(key: 'access_token', value: accessToken);
      await _storage.write(key: 'refresh_token', value: refreshToken);
    } catch (e) {
      print('Error saving token: $e');
    }
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: 'access_token');
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: 'refresh_token');
  }

  Future<void> deleteTokens() async {
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'refresh_token');
  }
}
