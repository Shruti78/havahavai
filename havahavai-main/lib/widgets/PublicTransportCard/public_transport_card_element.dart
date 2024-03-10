import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicTransportCardElement extends StatelessWidget {
  const PublicTransportCardElement({super.key, required this.title, required this.subtitle, required this.logoPath});

  final String title;
  final String subtitle;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SvgPicture.asset(
        logoPath,
        height: 25,
      ),
      title:  Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset("assets/arrow.svg"),
          ),
        ],
      ),
    );
  }
}
