// ignore_for_file: prefer_typing_uninitialized_variables, empty_catches

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trogon_media/model/feed%20model/feed_model.dart';

class FeedService {
  final url =
      'https://focusarea.in/app/api/feed?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOWExZDBjNDYzMjk4Zjc5IiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTA5MjEiLCJmaXJzdF9uYW1lIjoiaGlzaGFtIiwibGFzdF9uYW1lIjoiIiwiZW1haWwiOiI5MTg2MDYwMTc1MjciLCJyb2xlIjoidXNlciJ9.fg9qT6E2rPpxlQDHuwJ0Nyr27Vt5noaQoA9uLeDpIwQ';

  Future<FeedModel> fetchData() async {
    var data;
    try {
      final apiUrl = Uri.parse(url);
      final response = await http.get(apiUrl);
      if (response.statusCode == 200) {
        // print(response.body);
        final jsonData = jsonDecode(response.body);
        data = FeedModel.fromJson(jsonData);
      }
    } catch (e) {}
    return data;
  }
}
