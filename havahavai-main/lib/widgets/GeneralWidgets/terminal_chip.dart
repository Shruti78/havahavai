import 'package:flutter/material.dart';

class TerminalChip extends StatelessWidget {
  const TerminalChip({super.key, required this.text, required this.isSelected});

  final String text;
  final bool isSelected;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: (isSelected)?Colors.black : const Color.fromARGB(255, 230, 230, 230),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style:  TextStyle(
            color: (isSelected)?Colors.white: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
