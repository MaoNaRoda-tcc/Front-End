import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://example.com/profile_picture.jpg'), // Substitua pela URL da imagem real
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Detalhes',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text('Usuário: tjetstage2_forjado', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white),
                title: Text('Email: gustavotjj2@gmail.com', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.garage, color: Colors.white),
                title: Text('Editar minha garagem', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/garagem');
                },
              ),
              SizedBox(height: 20),
              Text(
                'Contate-nos',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              ListTile(
                leading: Icon(Icons.discord, color: Colors.white),
                title: Text('Discord: fgAlV', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white),
                title: Text('Email: avalak@outspot.com.br', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
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