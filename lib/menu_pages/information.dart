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
    return Scaffold(
        body: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black38, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Center(
              child: CircularProgressIndicator(
                  backgroundColor: Colors.yellowAccent,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black))),
          Container(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  target: LatLng(-6.895327499970892, 106.80946383829516),
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
    ));
  }
}
