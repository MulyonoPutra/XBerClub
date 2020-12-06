part of 'models.dart';

class Player extends Equatable {
  final int id;
  final String profilPicture;
  final String dateOfBirth;
  final String heightAndWeight;
  final int backNumber;
  final String dscriptions;

  Player(
      {this.id,
      this.profilPicture,
      this.dateOfBirth,
      this.heightAndWeight,
      this.backNumber,
      this.dscriptions});

  @override
  List<Object> get props => [
        id,
        profilPicture,
        dateOfBirth,
        heightAndWeight,
        backNumber,
        dscriptions,
      ];
}

List<Player> mockPlayers = [
  Player(
    id: 1,
    profilPicture: "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/budi%20caplik123.png?alt=media&token=15b4cd3a-ff40-45bc-b117-56b3defb3ac3",
    dateOfBirth:
        "Sukabumi, 27 Januari 1994",
    heightAndWeight: "X-Ber FC",
    backNumber: 12,
    dscriptions: "none",
  ),
    Player(
    id: 2,
    profilPicture: "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/budi%20caplik123.png?alt=media&token=15b4cd3a-ff40-45bc-b117-56b3defb3ac3",
    dateOfBirth:
        "Sukabumi, 27 Januari 1994",
    heightAndWeight: "X-Ber FC",
    backNumber: 12,
    dscriptions: "none",
  ),
];
