import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassCatalog extends StatelessWidget {
  final String classnumber;
  const ClassCatalog({Key? key, required this.classnumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
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
            margin: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromRGBO(148, 148, 150, 1).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 120.0,
            width: 100.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, top: 65),
          child: CircleAvatar(
            backgroundColor: const Color(0xFF8C52FF),
            radius: 40,
            child: Text(classnumber,
                style:
                    GoogleFonts.poppins(fontSize: 17.0, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
