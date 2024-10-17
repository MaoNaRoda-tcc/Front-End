import 'package:app_mao_na_roda/models/EventModel.dart';
import 'package:app_mao_na_roda/api/RequestEvents.dart';

class EventBloc {
  static List<EventModel> events = [];

  static Future<void> getEvents() async {
    ApiService apiService = ApiService(); // Instancia ApiService
    EventBloc.events = await apiService.fetchEvents(); // Carrega os eventos
  }
}
