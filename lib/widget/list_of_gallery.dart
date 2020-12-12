import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class ListOfGallery extends StatelessWidget {
  final Gallery gallery;

  const ListOfGallery({Key key, @required this.gallery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Card(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(gallery.images),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ));
  }
}