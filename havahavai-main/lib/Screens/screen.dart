import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:havahavaiAssignment/widgets/Card1/card_element1.dart';
import 'package:havahavaiAssignment/widgets/Contact/contact_card.dart';
import 'package:havahavaiAssignment/widgets/TaxiServiceCard/taxi_service_card.dart';
import 'package:havahavaiAssignment/widgets/ForeighnExchangeCard/foreign_exchange_card.dart';
import 'package:havahavaiAssignment/widgets/GeneralWidgets/general_card.dart';
import 'package:havahavaiAssignment/widgets/GeneralWidgets/generic_button.dart';
import 'package:havahavaiAssignment/widgets/PublicTransportCard/public_transport_card.dart';
import 'package:havahavaiAssignment/widgets/SelfParkingCard/self_parking_card.dart';
import 'package:havahavaiAssignment/widgets/TerminalMapCard/terminal_map.dart';
import 'package:havahavaiAssignment/widgets/rounded_chip_element.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int current = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.white),
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Dubai Airport - DXB",
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Dubai .🇦🇪 United Arab Emirates",
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ];
        },
        body: Padding(
          // padding: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                const ImageCardElement(),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) { return Row( children:  [
                     
                      Visibility(
                        visible: current==index,
                        child: RoundedChipElement(isSelected: true, text: "Transport")),
                      RoundedChipElement(isSelected: false, text: "Terminal"),
                      RoundedChipElement(isSelected: false, text: "Forex"),
                      RoundedChipElement(
                        isSelected: false,
                        text: "Contact info",
                      )
                    ],); },

                  ),
                ),
                
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Taxi Service", child: TaxiServiceCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Public Transport", child: PublicTransportCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Self Parking", child: SelfParkingCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Terminal Map", child: TerminalCardWidget()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Foreign Exchange", child: ForeignExchangeCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Contact Airport", child: Contact()),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GenericButton(
                          buttonIcon: Icons.directions,
                          buttonText: "Get Direction"),
                      SizedBox(
                        width: 12,
                      ),
                      GenericButton(
                          buttonIcon: Icons.phone, buttonText: "Call Airport"),
                    ],
                  ),
                ),
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}
