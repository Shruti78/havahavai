import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TileElement extends StatelessWidget {
  const TileElement(
      {super.key,
      required this.assetPath,
      required this.text,
      required this.subtext});

  final String assetPath;
  final String text;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(assetPath)),
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          subtext,
          style: const TextStyle(
            color: Color.fromARGB(255, 128, 128, 128),
          ),
        )
      ],
    );
  }
}
