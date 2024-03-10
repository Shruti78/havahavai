import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelfParkingElement extends StatelessWidget {
  const SelfParkingElement({super.key, required this.assetLocation, required this.title, required this.rentPrice});

  final String assetLocation;
  final String title;
  final String rentPrice;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SvgPicture.asset(
        assetLocation,
        height: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w700, fontSize: 16),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "AED $rentPrice / day",
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.info, color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}