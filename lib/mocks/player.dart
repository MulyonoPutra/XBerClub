part of 'models.dart';

class Player extends Equatable {
  final int id;
  final String name;
  final String profilPicture;
  final String dateOfBirth;
  final String heightAndWeight;
  final int backNumber;
  final String dscriptions;

  Player(
      {this.id,
      this.name,
      this.profilPicture,
      this.dateOfBirth,
      this.heightAndWeight,
      this.backNumber,
      this.dscriptions});

  @override
  List<Object> get props => [
        id,
        name,
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
    name: "Budi",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/budi%20caplik123.png?alt=media&token=15b4cd3a-ff40-45bc-b117-56b3defb3ac3",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "Keeper yang bagus dalam team. Sedikit lambat untuk terpicu diawal. Ketika tekanan darah sudah mulai terpacu, teknik dan semangatnya mulai naik dan lebih bergairah dalam pertandingan.",
  ),
  Player(
    id: 2,
    name: "Angga",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.37.jpeg?alt=media&token=261e8f6b-6b19-47ea-8678-6e3d30f30dd9",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "Great player! Punya banyak skill dan teknik yang bagus. Akan lebih baik lagi jika Shooting Powernya lebih di tingkatkan.",
  ),
  Player(
    id: 3,
    name: "Dio",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.40.jpeg?alt=media&token=7520bba3-ded5-4de4-ac92-bbe0526c08b9",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "Memiliki teknik yang baik mulai dari passing, shoting, skill. Cukup konsisten dalam bermain. Overall, bagus dalam semua lini.",
  ),
  Player(
    id: 4,
    name: "Denis",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.39%20(2).jpeg?alt=media&token=3faf57d3-7666-4cd5-b684-92b2d3610c7c",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions: "Nice talent! lincah, a lot of speed, smart. Full of teknik dalam bermain.",
  ),
  Player(
    id: 5,
    name: "Aden Farhan",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.41.jpeg?alt=media&token=fd8aa55f-a06a-45fb-96cc-72ea2a7ff5ae",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "our leader! he is our captain and our goalkeeper. he can lead our team but sometimes he must be focus",
  ),
  Player(
    id: 6,
    name: "Devi",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.40%20(1).jpeg?alt=media&token=481eb3e7-10fc-4142-9b2f-445ca45312a4",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "kengototan ketika bermain dipadukan dengan teknik alami yang dia miliki, sayangnya dia jarang berlatih dan bakatnya pun perlahan mulai hilang. ",
  ),
  Player(
    id: 7,
    name: "Wahyu",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.39%20(1).jpeg?alt=media&token=39ec42f5-ea44-46c7-a758-8ff7d4395237",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "teknikal player, dia tidak mengandalkan fisik, akan tetapi dia tidak terlalu serius untuk berlatih",
  ),
  Player(
    id: 8,
    name: "Pendi",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.38%20(1).jpeg?alt=media&token=97e38eff-332d-4d66-a8b4-2c5727bff3de",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        "great player! pemain lincah, smart, full teknik. terkadang dia sering nervous ketika diawal pertandingan.",
  ),
  Player(
    id: 9,
    name: "Andre",
    profilPicture:
        "https://firebasestorage.googleapis.com/v0/b/xber-futsal-club.appspot.com/o/WhatsApp%20Image%202020-11-29%20at%2017.32.39.jpeg?alt=media&token=45cf9299-3280-4bd8-b8d9-b94f4e0d8f9e",
    dateOfBirth: "Sukabumi, DD MM YYYY",
    heightAndWeight: "xxx kg / xx cm",
    backNumber: 12,
    dscriptions:
        " ",
  ),
];
