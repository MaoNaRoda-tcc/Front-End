import 'package:flutter/material.dart';

class carDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Detalhes do Carro',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed:() {
            Navigator.pop(context); //ERRO DA DESGRAÇA! NUNCA DA CERTO
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://example.com/car_image.jpg'), 
            SizedBox(height: 20),
            Text(
              'Punto TJet 2015',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
            ),
            Text('TJET 1.4', style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            Text(
              'Mais Modificações',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.tune, color: Colors.white),
              title: Text('Mola Eibach esportivas', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.color_lens, color: Colors.white),
              title: Text('Coletor Plano M3', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.build, color: Colors.white),
              title: Text('Rodas Abarth 17"', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.build, color: Colors.white),
              title: Text('Pneus Michelin 205/45/R17', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/garagem');
            },
            style: ElevatedButton.styleFrom(),
            child: Text('Voltar para garagem'),
          ),
          ],
        ),
      ),
    );
  }
}