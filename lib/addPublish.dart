import 'package:flutter/material.dart';

class AddPublish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('Perfil',
            style: TextStyle(color: Colors.white)),
            Icon(Icons.arrow_right),
            Text('Garagem',
            style: TextStyle(color: Colors.white)),
            Icon(Icons.arrow_right),
            Text('Adicionar',
            style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Adicionar publicação',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload_file, size: 50, color: Colors.white),
                    SizedBox(height: 8),
                    Text(
                      'Fazer upload de uma imagem',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Legenda',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Ex: turbina',
                hintStyle: TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Adicionar',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.check),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}