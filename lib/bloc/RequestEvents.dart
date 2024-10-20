import 'package:app_mao_na_roda/shared/models/EventModel.dart';
import 'package:app_mao_na_roda/api/RequestEvents.dart';

class EventBloc {
  static List<EventModel> events = [];

  static Future<void> getEvents() async {
    ApiServiceEvents apiService = ApiServiceEvents(); // Instancia ApiService
    EventBloc.events = await apiService.fetchEvents(); // Carrega os eventos
  }
}
