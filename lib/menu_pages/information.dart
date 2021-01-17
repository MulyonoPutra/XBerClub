part of 'pages.dart';

class Information extends StatefulWidget {
  const Information({
    Key key,
  }) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
                            Text(DESCRIPTION,
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.amber[400],
                                    fontSize: 14)),
                            SizedBox(height: 20),
                            Text(LETS_PLAY,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.amber[400],
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 300,
                            child: GoogleMap(
                              mapType: MapType.normal,
                              initialCameraPosition: CameraPosition(
                                  target: LatLng(
                                      -6.895327499970892, 106.80946383829516),
                                  zoom: 14),
                              markers: _marker,
                              onTap: (position) {
                                setState(() {
                                  _marker.add(Marker(
                                      markerId: MarkerId(
                                          "${position.latitude}, ${position.longitude}"),
                                      icon: BitmapDescriptor.defaultMarker,
                                      position: position));
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
