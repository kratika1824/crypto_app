import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://192.168.1.111:8080/api/users";// or your ngrok/IPv4

  static Future<String> registerUser(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/register"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": email,
          "password": password,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return "Signup Success";
      } else {
        print("❌ Signup Failed: ${response.statusCode} - ${response.body}");
        return "Signup Failed: ${response.body}";
      }
    } catch (e) {
      print("❌ Exception: $e");
      return "Error: $e";
    }
  }
}
