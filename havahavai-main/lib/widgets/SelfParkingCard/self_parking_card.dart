import 'package:flutter/cupertino.dart';
import 'package:havahavaiAssignment/widgets/GeneralWidgets/terminal_chip.dart';
import 'package:havahavaiAssignment/widgets/SelfParkingCard/self_parking_element.dart';

class SelfParkingCard extends StatelessWidget {
  const SelfParkingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                TerminalChip(
                  text: "T1",
                  isSelected: true,
                ),
                TerminalChip(
                  text: "T2",
                  isSelected: false,
                ),
              ],
            ),
          ),
          SelfParkingElement(
            assetLocation: "assets/twowheeler.svg",
            rentPrice: "50",
            title: "Two Wheeler",
          ),
          SelfParkingElement(
            assetLocation: "assets/car.svg",
            rentPrice: "100",
            title: "Car Parking",
          ),
          SelfParkingElement(
            assetLocation: "assets/electriccar.svg",
            rentPrice: "100",
            title: "Electric Car Parking",
          ),
        ],
      ),
    );
  }
}