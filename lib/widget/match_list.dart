import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class MatchListItem extends StatelessWidget {
  final Score score;

  const MatchListItem({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SizedBox(
          height: 130,
          child: Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                    colors: [Colors.black87, Colors.amberAccent],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.5, 0.0),
                    
                    tileMode: TileMode.clamp),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 15, 24, 10),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          score.ourLogo,
                          height: 50,
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            score.clubName,
                            style: GoogleFonts.yellowtail(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            score.ourScore.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 25.0, left: 20.0, right: 20.0),
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
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            score.opponentScore.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/random"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            score.opponentName,
                            style: GoogleFonts.yellowtail(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
