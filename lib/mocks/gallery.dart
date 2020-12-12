part of 'models.dart';

class Gallery extends Equatable {
  final int id;
  final String images;

  Gallery({
    this.id,
    this.images,
  });

  @override
  List<Object> get props => [
        id,
        images,
      ];
}

List<Gallery> mockGallery = [
    Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery9.jpeg?alt=media&token=8dbcb76c-0112-4cfa-8495-06cfadd890be",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery10.jpeg?alt=media&token=f922e453-3054-4b8e-b574-62be9f60f6fc",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery11.jpeg?alt=media&token=4b6d9f72-3e0b-48e6-bfad-3394f7814e69",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery12.jpeg?alt=media&token=adfdade6-fc18-43d4-8b22-50accfb9ff28",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery14.jpeg?alt=media&token=ecf1f603-509e-48c2-b30f-6be1fb7e55e3",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery16.jpeg?alt=media&token=6238d7f7-5e20-47a8-b2fc-1ceefd73d0dc",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery17.jpeg?alt=media&token=6ee1179b-28c3-4404-a39d-0e3904a88c82",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery18.jpeg?alt=media&token=c22f75e4-9286-4944-b73e-1e5385ffdb1f",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery2.jpeg?alt=media&token=132e7d09-75f5-4106-8a5e-96e56854580b",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery20.jpeg?alt=media&token=e230a02b-6f60-40ee-b5df-e3f52b4b94da",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery3.jpeg?alt=media&token=faf75a16-18c3-4e0d-a9cd-099b83211e7e",
  ),
  Gallery(
    images:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/Gallery4.jpeg?alt=media&token=9c87d8bd-8cbd-4ed4-b735-ab811a9277ad",
  ),

];
