part of 'pages.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Container(
         
          child: Poster(
            gallery: mockGallery[index],
          )),
    );
  }
}
