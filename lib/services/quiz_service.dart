import 'dart:convert';
import 'package:http/http.dart' as http;

class QuizService {
  getQuiz() async {
    const url = "http://10.0.2.2:8080/api/quiz";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    return json;
  }
}
