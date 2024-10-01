import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eventos',
          style: TextStyle(color: Colors.white), // Cor do título branca
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black, // Fundo preto para a página
        padding: EdgeInsets.all(16.0), // Espaçamento nas bordas
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descubra novos eventos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 4),
                Text(
                  'São Paulo',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  EventCard(
                    title: 'Encontro RLZ Squad',
                    dateTime: '11/04 - 23:00',
                    description:
                        'Venha participar do encontro no posto Ipiranga na Radial Leste. Sem acelerar no posto, de resto tá liberado.',
                  ),
                  EventCard(
                    title: 'Alemão da Caravan',
                    dateTime: '08/04 - 12:00',
                    description:
                        'Entrega do opala diplomata na Toretto DragRace.',
                  ),
                  EventCard(
                    title: 'Tok&Stok',
                    dateTime: '11/04 - 00:00',
                    description:
                        'Postinha pra mostrar os projetos de vocês. Acelerar somente fora do posto.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/addPubliEvento');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 1, // Índice para Postagens
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacementNamed('/home');
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed('/eventos');
              break;
            case 2:
              Navigator.of(context).pushReplacementNamed('/pecas');
              break;
            case 3:
              Navigator.of(context).pushReplacementNamed('/perfil');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Postagens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Eventos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Peças',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String dateTime;
  final String description;

  const EventCard({
    Key? key,
    required this.title,
    required this.dateTime,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/EventDetails', arguments: {
          'title': title,
          'dateTime': dateTime,
          'description': description,
        });
      },
      child: Card(
        color: Colors.grey[900], // Fundo cinza escuro para o card
        margin: EdgeInsets.only(bottom: 16.0), // Espaço entre os cards
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title - $dateTime',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
