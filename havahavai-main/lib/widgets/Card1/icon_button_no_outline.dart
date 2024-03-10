import 'package:flutter/material.dart';

class NoOutlineIconButton extends StatelessWidget {
  const NoOutlineIconButton({super.key, required this.iconData, required this.buttonText});

  final IconData iconData;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Icon(
              iconData,
              color: Colors.blue,
            ),
          ),
          Text(
            buttonText,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
