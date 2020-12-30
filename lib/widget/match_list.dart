import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class MatchListItem extends StatelessWidget {
  final Score score;

  const MatchListItem({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20.0),
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 3),
              ],
              gradient: LinearGradient(
                  colors: [Colors.black87, Colors.amberAccent],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.5, 0.0),
                  tileMode: TileMode.mirror),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 52, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            score.ourLogo,
                            height: 60,
                            width: 50,
                          ),
                          Text(
                            score.clubName,
                            style: GoogleFonts.yellowtail(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text("Violet Cup",
                                    style: GoogleFonts.lobsterTwo(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                        fontSize: 14)),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      score.ourScore.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                    Text(
                                      " : ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Text(
                                      score.opponentScore.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "29 November 2020",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 28, left: 40),
                      child: Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
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
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135.0),
                    child: Center(
                        child: Container(
                            color: Colors.black.withOpacity(0.5),
                            padding: const EdgeInsets.only(top: 0.0),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: Center(
                              child: Text(
                                "Latest Match",
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellow[600]),
                              ),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
