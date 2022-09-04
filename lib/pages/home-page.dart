import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(300),
                    bottomRight: Radius.circular(300),
                  ),
                  color: Color(0xFF8C52FF),
                ),
                height: 400.0,
                width: 400.0,
              ),
              Positioned(
                top: 130,
                child: Text("Path Pustak",
                    style: GoogleFonts.poppins(
                        fontSize: 40.0, color: Colors.white)),
              ),
              Positioned(
                top: 200,
                child: Image.asset("images/book_icon.png"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 50),
            child: Text("Never stop learning. Never stop growing.",
                style: GoogleFonts.poppins(
                    fontSize: 30.0, color: const Color(0xFF9683BD))),
          ),
          const Divider(
            height: 100,
            thickness: 2,
            color: Color(0xFF8C52FF),
            indent: 50.0,
            endIndent: 50.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xFF8C52FF),
              ),
              height: 70,
              width: 300,
              child: Center(
                child: Text(
                  "Getting Started",
                  style:
                      GoogleFonts.poppins(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
