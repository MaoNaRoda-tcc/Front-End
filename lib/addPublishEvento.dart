import 'package:flutter/material.dart';

class AddPublishEvento extends StatelessWidget {
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
            SizedBox(height: 10),
            Text(
              'Nome do evento',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 1),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Ex: Postinho Br',
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
            SizedBox(height: 10),
            Text(
              'Descrição evento',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 1),
            TextField(
              maxLines: 5,
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
            SizedBox(height: 10),
            Text(
              'Endereço:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 1),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Ex: Av. Brasil',
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
            SizedBox(height: 10),
            Text(
              'Horario:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 1),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Ex: 18:00 - 00:00',
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
                Navigator.of(context).pushReplacementNamed('/eventos');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}