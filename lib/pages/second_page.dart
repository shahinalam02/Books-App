import 'package:books_app/pages/home-page.dart';
import 'package:books_app/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/data_source.dart';
import '../widgets/class_catalog.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  var bookData = booksDatasource.books;

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
                  const Padding(
                      padding: EdgeInsets.only(
                    top: 100.0,
                    bottom: 0,
                  )),
                  Image.asset(
                    "images/book_icon2.png",
                    width: 60.0,
                  ),
                  const SizedBox(width: 20.0),
                  Text(
                    "Path Pustak",
                    style: GoogleFonts.poppins(
                      fontSize: 35.0,
                      color: const Color(0xFF8C52FF),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 650,
                  width: 400,
                  child: GridView.builder(
                    itemCount: bookData!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (BuildContext context, index) => ClassCatalog(
                      classnumber: "${bookData![index]!["class_number"]}",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
