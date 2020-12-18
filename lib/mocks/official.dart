part of 'models.dart';

class Official extends Equatable {
  final int id;
  final String name;
  final String profilPicture;
  final String dateOfBirth;
  final String heightAndWeight;
  Official({
    this.id,
    this.name,
    this.profilPicture,
    this.dateOfBirth,
    this.heightAndWeight,
  });

  @override
  List<Object> get props =>
      [id, name, profilPicture, dateOfBirth, heightAndWeight];
}

List<Official> mockOfficials = [
  Official(
      id: 1,
      name: "Aldi Husada",
      profilPicture:
          "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/aldi1.png?alt=media&token=3e1eb9a3-50c9-458a-ba04-04e83a64e159",
      dateOfBirth: "Sukabumi, DD MM YYYY",
      heightAndWeight: "xxx kg / xx cm"),
  Official(
    id: 2,
    name: "Ferdi",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/ferdy.png?alt=media&token=d134666d-759d-4468-b795-d5cfe03eea8e",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
  ),
  Official(
    id: 3,
    name: "Mulyono Putra",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/pp.png?alt=media&token=555700fc-1a1a-4ad9-95b1-26b339c585dd",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
  ),
];
