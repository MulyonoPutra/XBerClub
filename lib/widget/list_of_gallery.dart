import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class ListOfGallery extends StatelessWidget {
  final Gallery gallery;

  const ListOfGallery({Key key, @required this.gallery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20.0),
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
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
