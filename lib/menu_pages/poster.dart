import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class Poster extends StatelessWidget {

  final Gallery gallery;
  const Poster({Key key, @required this.gallery}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 10, left: 30, right: 30),
        height: 500,
        width: 100,
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
                      image: AssetImage(gallery.poster),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ));
  }
}
