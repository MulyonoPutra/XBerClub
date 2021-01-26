import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class ListOfGallery extends StatelessWidget {
  final Gallery gallery;

  const ListOfGallery({Key key, @required this.gallery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
        height: 250,
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
            ],
          ),
        ));
  }
}
