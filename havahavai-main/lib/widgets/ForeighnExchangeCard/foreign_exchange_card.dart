import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:havahavaiAssignment/widgets/ForeighnExchangeCard/foreign_exchange_element.dart';

class ForeignExchangeCard extends StatelessWidget {
  const ForeignExchangeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ForeignExchangeElement(
            title: "Travelex",
            description:
                "Terminal 3-\nAirside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room",
            isExpanded: true,
          ),
          Divider(color: Color.fromARGB(255, 230, 230, 230),),
          ForeignExchangeElement(
            title: "Al Ansari Exchange",
            description:
                "Terminal 3-\nAirside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room",
            isExpanded: false,
          ),
          Divider(color: Color.fromARGB(255, 230, 230, 230),),
          ForeignExchangeElement(
            title: "Emirates NBD",
            description:
                "Terminal 3-\nAirside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room",
            isExpanded: false,
          )
        ],
      ),
    );
  }
}
