import 'package:flutter/material.dart';

class CarModelDropdown extends StatefulWidget {
  @override
  _CarModelDropdownState createState() => _CarModelDropdownState();
}

class _CarModelDropdownState extends State<CarModelDropdown> {
  List<String> carModels = ["Tjet Turbo", "Civic", "Corolla", "Fiesta"];
  List<String> filteredCarModels = [];

  @override
  void initState() {
    super.initState();
    filteredCarModels = carModels;
  }

  void _filterCarModels(String query) {
    setState(() {
      filteredCarModels = carModels
          .where((model) => model.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.white),
            hintText: 'Pesquisar modelo de carro...',
            hintStyle: TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.black.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            _filterCarModels(value);
          },
        ),
        DropdownButton<String>(
          items: filteredCarModels.map((model) {
            return DropdownMenuItem<String>(
              value: model,
              child: Text(model),
            );
          }).toList(),
          onChanged: (value) {
            // AQUIIIIIII fazer logica para a pesquisa dos valores e aplicação
          },
        ),
      ],
    );
  }
}
