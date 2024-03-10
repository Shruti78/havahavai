import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaxiServiceElement extends StatelessWidget {
  const TaxiServiceElement(
      {super.key, required this.logoPath, this.isLuxury = false});

  final String logoPath;
  final bool isLuxury;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 229, 228, 228)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (isLuxury)
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(4),
                          bottomRight: Radius.circular(4))),
                  child: const Text(
                    "LUXURY",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : const Expanded(child: SizedBox()),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(logoPath),
                const Text(
                  "\$\$\$\$\$",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
