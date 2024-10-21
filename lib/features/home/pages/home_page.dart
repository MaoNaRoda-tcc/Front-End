import 'package:app_mao_na_roda/bloc/RequestPubli.dart';
import 'package:app_mao_na_roda/shared/models/PubliModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Postagens', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
       body: FutureBuilder<List<PubliModel>>(
        future: PubiBloc.getPublications(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar publicações'));
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            List<PubliModel> publications = snapshot.data!;
            return ListView(
              children: publications.map((result) {
                  return PostWidget(
                    imageUrl: result.link_foto, 
                    description: result.titulo,
                  );
                }).toList(),
                );
          } else {
            return Center(child: Text('Nenhuma publicação disponível'));
          }
        },
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.of(context).pushReplacementNamed('/addPubli');
          print('SLAAAAA');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Garante a cor dos itens fixos
        backgroundColor: Colors.black, // Fundo preto
        selectedItemColor: Colors.white, // Cor dos itens selecionados
        unselectedItemColor: Colors.grey, //cor dos itens não selecionados
        currentIndex: 0, // Índice para Postagens
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

class PostWidget extends StatelessWidget {
  final String imageUrl;
  final String description;

  const PostWidget({
    Key? key,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // Define a cor do Card como cinza escuro
      child: Column(
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(color: Colors.white), // Texto em branco
            ),
          ),
          ButtonBar(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.white, // Ícones em branco
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.comment),
                color: Colors.white, // Ícones em branco
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
