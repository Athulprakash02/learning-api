// ignore_for_file: prefer_typing_uninitialized_variables, empty_catches

import 'dart:convert';

import 'package:trogon_media/model/course%20model/course_model.dart';
import 'package:http/http.dart' as http;

class CourseService {
  final url =
      'https://trogon.info/tutorpro/lms_demo/api/my_course_data?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOGMwZWIxYjA3YjEzNTEzIiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTQiLCJuYW1lIjoiYWRlZWIgdGVzdCAiLCJlbWFpbCI6IjkxOTY1NjY3MDg2NyIsInJvbGUiOiJ1c2VyIn0.dgRNiQdBNzZ_tGoPMxu3aqBuveTG8zrT3zZheVhYpQ4';
  Future<CourseModel> fetchData() async {
    var data;
    try {
      final apiUrl = Uri.parse(url);
      final response = await http.get(apiUrl);
      if (response.statusCode == 200) {
        // print(response.body);
        final jsonData = jsonDecode(response.body);
        data = CourseModel.fromJson(jsonData);
      }
    } catch (e) {}
    return data;
  }
}
