import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class MatchListItem extends StatelessWidget {
  final Score score;

  const MatchListItem({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var teamNameTextStyle = TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.grey.shade800,
        fontFamily: 'Raleway-Medium');

    return Container(
      child: SizedBox(
          height: 90,
          child: Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 15, 10, 10),
              child: Row(
                children: <Widget>[
                  Image.asset(score.ourLogo),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        score.clubName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'Raleway-Medium'),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        score.ourScore.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: Text(
                      ":",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        score.opponentName,
                        style: teamNameTextStyle,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        score.opponentScore.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: NetworkImage(score.opponentLogo),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
