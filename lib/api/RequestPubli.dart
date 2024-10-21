import 'package:app_mao_na_roda/shared/models/EventModel.dart';
import 'package:app_mao_na_roda/shared/models/PubliModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServicePubli {
  static const apiUrl =
      'https://back-end-9p5p.onrender.com/publicacao?skip=0&take=10';

  Future<List<PubliModel>> fetchEvents() async {
    final url = Uri.parse(apiUrl);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      List<PubliModel> publications =
          data.map((publi) => PubliModel.fromMap(publi)).toList();

      return publications;
    } else {
      throw Exception('Erro na requisição: ${response.statusCode}');
    }
  }
}
