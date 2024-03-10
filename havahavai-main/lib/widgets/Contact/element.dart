// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        trailing: Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(255, 234, 234, 234)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              "assets/call.svg",
              color: Colors.black.withAlpha(200),
            ),
          ),
        ),
      ),
    );
  }
}