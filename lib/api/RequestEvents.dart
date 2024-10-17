import 'package:app_mao_na_roda/models/EventModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; 

class ApiService {
  static const apiUrl = 'https://back-end-9p5p.onrender.com/publicacao?skip=0&take=10';

  Future<List<EventModel>> fetchEvents() async {
    final url = Uri.parse(apiUrl);  
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      List<EventModel> events = data.map((event) => EventModel.fromMap(event)).toList();

      return events;
    } else {
      throw Exception('Erro na requisição: ${response.statusCode}');
    }
  }
}
