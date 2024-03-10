import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForeignExchangeElement extends StatelessWidget {
  const ForeignExchangeElement({super.key, required this.title, required this.description, required this.isExpanded});

  final String title;
  final String description;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
      visualDensity: VisualDensity.standard,
      initiallyExpanded: isExpanded,
      shape: const Border(),
      tilePadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            description,
            style: const TextStyle(color: Color.fromARGB(255, 111, 111, 111)),
          ),
        )
      ],
    );
  }
}
