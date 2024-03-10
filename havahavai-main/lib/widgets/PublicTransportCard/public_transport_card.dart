import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:havahavaiAssignment/widgets/PublicTransportCard/public_transport_card_element.dart';

class PublicTransportCard extends StatelessWidget {
  const PublicTransportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          PublicTransportCardElement(title: "Metro", subtitle: "6am - 10pm",logoPath: "assets/metro.svg",),
          Divider(),
          PublicTransportCardElement(title: "Bus",subtitle: "available 24hrs",logoPath: "assets/bus.svg" ,),
        ],
      ),
    );
  }
}
