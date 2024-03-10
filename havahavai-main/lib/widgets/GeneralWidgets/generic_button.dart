import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  const GenericButton(
      {super.key, required this.buttonIcon, required this.buttonText});

  final IconData buttonIcon;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.black,
          iconColor: Colors.white,
        ),
        onPressed: () {
          
        },
        icon: Icon(buttonIcon),
        label: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
