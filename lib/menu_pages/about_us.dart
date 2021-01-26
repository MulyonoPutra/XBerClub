part of 'pages.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({
    Key key,
  }) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final Set<Marker> _marker = {};
  final LatLng currentPosition = LatLng(-6.895327499970892, 106.80946383829516);

  @override
  void initState() {
    _marker.add(Marker(
        markerId: MarkerId("-6.895327499970892, 106.80946383829516"),
        position: currentPosition,
        icon: BitmapDescriptor.defaultMarker));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Scaffold(
            backgroundColor: Colors.black,
            resizeToAvoidBottomPadding: false,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(DESCRIPTION,
                                style: TextStyle(
                                    fontFamily: 'LobsterTwo',
                                    color: Colors.amber[400],
                                    fontSize: 16)),
                            SizedBox(height: 20),
                            Text(LETS_PLAY,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'LobsterTwo',
                                    color: Colors.amber[400],
                                    fontSize: 16)),
                            SizedBox(height: 20),
                            Card(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 300,
                                    child: GoogleMap(
                                      mapType: MapType.normal,
                                      initialCameraPosition: CameraPosition(
                                          target: LatLng(-6.895327499970892,
                                              106.80946383829516),
                                          zoom: 14),
                                      markers: _marker,
                                      onTap: (position) {
                                        setState(() {
                                          _marker.add(Marker(
                                              markerId: MarkerId(
                                                  "${position.latitude}, ${position.longitude}"),
                                              icon: BitmapDescriptor
                                                  .defaultMarker,
                                              position: position));
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(ADDRESS,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'LobsterTwo',
                                    color: Colors.amber[400],
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        SizedBox(
                          child: Text(HOMEBASE,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.lobsterTwo(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.amber[400],
                                  fontSize: 16)),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 30, right: 30),
                            height: 500,
                            width: 600,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black38, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/homebase1.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
