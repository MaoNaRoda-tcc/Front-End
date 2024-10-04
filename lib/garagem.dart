import 'package:flutter/material.dart';

class garagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Garagem',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.car_repair, color: Colors.white),
            title: Text('Punto TJet 2015', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.edit, color: Colors.white),
            onTap: () {
              Navigator.pushNamed(context, '/cardetails');
            },
          ),
          ListTile(
            leading: Icon(Icons.car_repair, color: Colors.white),
            title: Text('Omega CD 4.1', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.edit, color: Colors.white),
          ),
          ListTile(
            leading: Icon(Icons.car_repair, color: Colors.white),
            title: Text('Parati S 1985', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.edit, color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addCar');
            },
            style: ElevatedButton.styleFrom(),
            child: Text('Adicionar carro'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: 3,
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
