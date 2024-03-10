import 'package:flutter/material.dart';
import 'package:havahavaiAssignment/widgets/FloatingFlightPageBar/floating_flight_page_element.dart';

class FloatingFlightPageBar extends StatelessWidget {
  const FloatingFlightPageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 55, 20, 130),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(38, 0, 0, 0),
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ]),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: const BorderDirectional(
                top: BorderSide(color: Colors.black, width: 2),
                start: BorderSide(color: Colors.black, width: 2),
                bottom: BorderSide.none,
                end: BorderSide.none
              ),
            ),
          )),
          Positioned(
            bottom: 0,
            right:0,
              child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: List.empty(),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: const BorderDirectional(
                bottom: BorderSide(color: Colors.black, width: 2),
                end: BorderSide(color: Colors.black, width: 2),
                top: BorderSide.none,
                start: BorderSide.none
              ),
            ),
          )),
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                FloatingFlightPageElement(text: "Flights", subtext: "04"),
                FloatingFlightPageElement(text: "Countries", subtext: "06"),
                FloatingFlightPageElement(
                    text: "Distance", subtext: "4,287 km"),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
