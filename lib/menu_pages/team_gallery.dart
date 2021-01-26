part of 'pages.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      double value = controller.offset / 270;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 20;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        Expanded(
            child: ListView.builder(
              itemExtent: 250.0,
                controller: controller,
                itemCount: mockGallery.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  double scale = 1.0;
                  if (topContainer > 0.5) {
                    scale = index + 0.5 - topContainer;
                    if (scale < 0) {
                      scale = 0;
                    } else if (scale > 1) {
                      scale = 1;
                    }
                  }
                  return Opacity(
                    opacity: scale,
                    child: Transform(
                      transform: Matrix4.identity()..scale(scale, scale),
                      alignment: Alignment.bottomCenter,
                      child: Align(
                          heightFactor: 0.7,
                          alignment: Alignment.topCenter,
                          child: ListOfGallery(gallery: mockGallery[index])),
                    ),
                  );
                })),
      ],
    );
  }
}
