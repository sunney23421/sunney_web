import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              
              child: FittedBox(
                child: Text(
                  "Chaiwat Kasetsinchai",
                  style: GoogleFonts.libreBarcode39Text(
                    textStyle: const TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            "Programmer",
            style: GoogleFonts.libreBarcode39Text(
              textStyle: const TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                height: 50,
                width: 50,
              )
            ],
          ),
          const Expanded(child:  SizedBox()),
        ],
      ),
    );
  }
}
