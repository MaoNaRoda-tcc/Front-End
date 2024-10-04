import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> eventDetails =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe',
        style: TextStyle(color: Colors.white)
        ,),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black, // Define o fundo da página como preto
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.event, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  '${eventDetails['title']} - ${eventDetails['dateTime']}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.white70),
                SizedBox(width: 8),
                Text(
                  'São Paulo', // Substitua ou adicione uma localização personalizada
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Descrição do evento:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              eventDetails['description']!,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
