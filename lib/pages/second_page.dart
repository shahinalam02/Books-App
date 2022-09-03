import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/class_catalog.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 100.0,
                    bottom: 0,
                  )),
                  Image.asset(
                    "images/book_icon2.png",
                    width: 60.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "Path Pustak",
                    style: GoogleFonts.poppins(
                      fontSize: 35.0,
                      color: Color(0xFF8C52FF),
                    ),
                  ),
                ],
              ),
              Container(
                height: 650,
                width: 400,
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (BuildContext context, index) =>
                        ClassCatalog()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
