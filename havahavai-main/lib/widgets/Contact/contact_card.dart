import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:havahavaiAssignment/widgets/Contact/element.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ContactWidget(text: "Police"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactWidget(text: "Lost and Found"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactWidget(text: "Transport"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactWidget(text: "Head Office"),
        ],
      ),
    );
  }
}