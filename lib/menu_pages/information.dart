part of 'pages.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool noInformation = true;
    return (noInformation == true)
        ? Container(
            child: Center(
              child: Text(
                "Nothing Information",
                style: GoogleFonts.specialElite(
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
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery20.jpeg?alt=media&token=e230a02b-6f60-40ee-b5df-e3f52b4b94da',
                        fit: BoxFit.cover,
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

/*                 Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Text("Awesome", style: TextStyle(fontSize: 14)),
                      )
                      
                    ],
                  ),
                ) */
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
