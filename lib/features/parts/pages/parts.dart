import 'package:flutter/material.dart';
import 'package:app_mao_na_roda/shared/components/car_model_dropdown.dart';

class Pecas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peças'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Encontre peças para o seu carro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.car_repair, color: Colors.white),
                SizedBox(width: 8),
                Expanded(
                  child: CarModelDropdown(),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  // PartCard(
                  //   title: 'Pastilha Freio Diant. Tras. Bosch',
                  //   vendor: 'Mercado Car',
                  //   imageUrl: 'https://via.placeholder.com/150',
                  // ),
                  // PartCard(
                  //   title: 'Bomba Combustível Punto 1.4 16v T-jet. Bosch',
                  //   vendor: 'Mercado Car',
                  //   imageUrl: 'https://via.placeholder.com/150',
                  // ),
                  // PartCard(
                  //   title:
                  //       'Kit Palheta Dianteira Bosch + Traseira Vetor Punto',
                  //   vendor: 'Mercado Car',
                  //   imageUrl: 'https://via.placeholder.com/150',
                  // ),
                  // PartCard(
                  //   title: 'Pastilha Freio Diant. Tras. Bosch',
                  //   vendor: 'Mercado Car',
                  //   imageUrl: 'https://via.placeholder.com/150',
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
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

class PartCard extends StatelessWidget {
  final String title;
  final String vendor;
  final String imageUrl;

  const PartCard({
    Key? key,
    required this.title,
    required this.vendor,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(imageUrl, width: 50, height: 50),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Vendida por: $vendor',
                        style: TextStyle(
                          color: Colors.blue[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
