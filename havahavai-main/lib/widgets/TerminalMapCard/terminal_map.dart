import 'package:flutter/material.dart';
import 'package:havahavaiAssignment/widgets/GeneralWidgets/terminal_chip.dart';

class TerminalCardWidget extends StatelessWidget {
  const TerminalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const Padding(
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
                TerminalChip(
                  text: "T3",
                  isSelected: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Image.asset(
                          fit: BoxFit.cover,
                          "assets/map.png",
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "View",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
