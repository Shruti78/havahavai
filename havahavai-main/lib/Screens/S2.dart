import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:havahavaiAssignment/widgets/FloatingFlightPageBar/floating_flight_page_bar.dart';
import 'package:havahavaiAssignment/widgets/rounded_chip_element.dart';

class FlightDetailsPage extends StatelessWidget {
  const FlightDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Image.asset(fit: BoxFit.cover, "assets/mapbg.jpeg"),
            ),
            Column(
              children: [
                const FloatingFlightPageBar(),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  alignment: Alignment.topLeft,
                  // height: 500,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      const MyFlightRow(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          RoundedChipElement(text: "Sorted", isSelected: true),
                          RoundedChipElement(
                              text: "Unsorted (12)", isSelected: false)
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TicketCard(),
                      const SizedBox(
                        height: 25,
                      ),
                      const BlackBoardingCard(),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const IconButtonChip(
                                text: "Boarding Pass",
                                icon: Icon(Icons.airplane_ticket),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButtonChip(
                                text: "Share Trip",
                                icon: SvgPicture.asset("assets/metro.svg"),
                              )
                            ],
                          ),
                          IconButton(
                              style: IconButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor:
                                      const Color.fromARGB(255, 226, 226, 226),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              icon: const Icon(Icons.drag_indicator))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Divider(),
                      ),

                      const TicketCard(),
                      const SizedBox(height: 30,)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconButtonChip extends StatelessWidget {
  const IconButtonChip({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      label: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      icon: icon,
    );
  }
}

class BlackBoardingCard extends StatelessWidget {
  const BlackBoardingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Boarding Closes in 00:30",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "On Time",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                TextButton.icon(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        backgroundColor: Colors.amber),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.logout_outlined,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "T20",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 16),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            // padding: const EdgeInsets.symmetric(vertical: 30),
            height: 160,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(38, 0, 0, 0),
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 230, 230, 230),
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mon, 20 Dec 24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Row(
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                border: Border.all(width: 0),
                                borderRadius: BorderRadius.circular(50)),
                            child: SvgPicture.asset(
                                height: 25,
                                fit: BoxFit.cover,
                                "assets/indigo.svg"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "6E 725",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                                fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: DashedDivider(
                    color: Color.fromARGB(255, 207, 207, 207),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DEL 08:15",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text("🇮🇳 New Delhi",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "2h 5m",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "10:15 BOM",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text("🇮🇳 Mumbai",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DashedDivider extends StatelessWidget {
  const DashedDivider({super.key, this.height = 1, this.color = Colors.black});
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 4.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

class MyFlightRow extends StatelessWidget {
  const MyFlightRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Row(
            children: [
              const Text(
                "My Flights",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromARGB(255, 234, 234, 234)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    "assets/downarrow.svg",
                    color: Colors.black.withAlpha(200),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(width: 25, "assets/searchicon.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(width: 25, "assets/addicon.svg"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
