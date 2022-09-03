import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassCatalog extends StatelessWidget {
  const ClassCatalog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 170),
          child: Text("class 1",
              style: GoogleFonts.poppins(
                  fontSize: 30.0, color: Color(0xFF9683BD))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              color: Color(0xFF8C52FF),
            ),
            height: 100.0,
            width: 150.0,
          ),
        ),
        Positioned(
          left: 25,
          bottom: 30,
          child: Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(148, 148, 150, 1).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 120.0,
            width: 100.0,
          ),
        ),
      ],
    );
  }
}
