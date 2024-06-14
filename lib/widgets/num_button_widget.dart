import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumButtonWidget extends StatelessWidget {
  final String num;

  const NumButtonWidget({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
      },
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size.width * 0.25,
        height: size.width * 0.25,
        alignment: Alignment.center,
        child: Text(
          num,
          style: GoogleFonts.montserrat(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}