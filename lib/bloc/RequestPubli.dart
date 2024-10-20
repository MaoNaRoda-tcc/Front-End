import 'package:app_mao_na_roda/api/RequestPubli.dart';
import 'package:app_mao_na_roda/shared/models/PubliModel.dart';

class PubiBloc {

  static Future<List<PubliModel>> getPublications() async {
    ApiServicePubli apiServicePubli = ApiServicePubli(); // Instancia ApiService
    try {
      return await apiServicePubli.fetchEvents(); // Retorna a lista de publicações
    } catch (e) {
      print('Erro ao carregar publicações: $e'); 
      return []; // Retorna uma lista vazia em caso de erro
    }
  }
}

