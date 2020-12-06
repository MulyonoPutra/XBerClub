import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class PlayerList extends StatelessWidget {
  final Player player;

  const PlayerList({Key key, @required this.player}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
        child: Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: NetworkImage(player.profilPicture), fit: BoxFit.cover),
        ),
      ),
    ));
  }
}
