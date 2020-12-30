import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class ListOfGallery extends StatelessWidget {
  final Gallery gallery;

  const ListOfGallery({Key key, @required this.gallery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black38, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Center(
                  child: CircularProgressIndicator(
                      backgroundColor: Colors.yellowAccent,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.black))),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(gallery.images), fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 182.0),
                  child: Center(
                      child: Container(
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.only(top: 0.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Center(
                            child: Text(
                              "We are X-Ber team",
                              style: GoogleFonts.lobsterTwo(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.yellow[600]),
                            ),
                          ))),
                ),
              )
            ],
          ),
        ));
  }
}
