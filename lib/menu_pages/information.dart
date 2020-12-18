part of 'pages.dart';

class Information extends StatelessWidget {
  final Score score;
  const Information({
    Key key,
    this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool noInformation = true;
    return (noInformation == true)
        ? Container(
            child: Center(
              child: Text(
                "Nothing Information",
                style: GoogleFonts.lobsterTwo(
                    fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
          )
        : Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Center(
                              child: Text("Violet Cup",
                                  style: GoogleFonts.lobsterTwo(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                      fontSize: 14)),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery18.jpeg?alt=media&token=c22f75e4-9286-4944-b73e-1e5385ffdb1f"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Center(
                            child: Text(
                              'Our mental is down after defeated from tournament !!!',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
