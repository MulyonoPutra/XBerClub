part of 'pages.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
      itemCount: mockGallery.length,
      itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                spreadRadius: 20,
                blurRadius: 5,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ],
          ),
          child: ListOfGallery(gallery: mockGallery[index])),
    );
  }
}
