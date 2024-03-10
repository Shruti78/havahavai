import 'package:flutter/material.dart';

class RoundedChipElement extends StatefulWidget {
  const RoundedChipElement(
      {super.key, required this.text, required this.isSelected });

  final String text;
     final bool isSelected;


  @override
  State<RoundedChipElement> createState() => _RoundedChipElementState();
}

class _RoundedChipElementState extends State<RoundedChipElement> {
    bool isSelected= false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         setState(() {
                  // Toggle light when tapped.
                 isSelected = !isSelected;
                });
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: (isSelected)
                ? Colors.black
                : const Color.fromARGB(255, 230, 230, 230)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            widget.text,
            style: TextStyle(
                color: (isSelected) ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
