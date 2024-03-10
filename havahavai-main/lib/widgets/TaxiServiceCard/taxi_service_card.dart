import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:havahavaiAssignment/widgets/TaxiServiceCard/taxi_service_elemnt.dart';

class TaxiServiceCard extends StatelessWidget {
  const TaxiServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: const [
        TaxiServiceElement(
          logoPath: "assets/uberlogo.png",
        ),
        TaxiServiceElement(
          logoPath: "assets/careemlogo.png",
        ),
        TaxiServiceElement(
          logoPath: "assets/yangologo.png",
        ),
        TaxiServiceElement(
          isLuxury: true,
          logoPath: "assets/blacklanelogo.png",
        ),
      ],
    );
  }
}
