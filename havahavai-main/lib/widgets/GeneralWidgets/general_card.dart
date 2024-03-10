import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralCardWidget extends StatelessWidget {
  const GeneralCardWidget(
      {super.key, required this.child, required this.title});

  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color.fromARGB(255, 230, 230, 230),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                child
              ],
            ),
          ),
        ),
      ],
    );
  }
}
