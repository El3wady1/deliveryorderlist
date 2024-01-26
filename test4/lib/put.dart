import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test4/endpoints.dart';

 putRequest(
{
  required String email,
  required String password,
}
    ) async {
  final String apiUrl =
      '${Endpoints.Urlbaseregister}'; // Replace with your API endpoint

  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> data = {
    "email": "$email",
    "password": "$password",
  };

  String jsonData = jsonEncode(data);

  try {
    http.Response response = await http.put(

      Uri.parse(apiUrl),
      headers: headers,
      body: jsonData,
    );

    if (response.statusCode == 200) {
      // Successful PUT request
      print('PUT request successful');
      print('Response: ${response.body}');
    } else {
      // Handle error
      print('PUT request failed with status: ${response.statusCode}');
      print('Response: ${response.body}');
    }
  } catch (e) {
    // Handle exception
    print('Error during PUT request: $e');
  }
}
