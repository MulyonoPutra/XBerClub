part of 'models.dart';

class Score extends Equatable {
  final int id;
  final String ourLogo;
  final String opponentLogo;
  final String clubName;
  final String opponentName;
  final int ourScore;
  final int opponentScore;

  Score(
      {this.id,
      this.ourLogo,
      this.opponentLogo,
      this.clubName,
      this.opponentName,
      this.ourScore,
      this.opponentScore});

  @override
  List<Object> get props => [
        id,
        ourLogo,
        opponentLogo,
        clubName,
        opponentName,
        ourScore,
        opponentScore
      ];
}

List<Score> mockScores = [
  Score(
      id: 1,
      ourLogo:
          "assets/images/logo_app.png",
      opponentLogo:
          "https://png.pngtree.com/element_pic/00/00/00/0056a4a011d9d09.jpg",
      clubName: "X-Ber FC",
      opponentName: "Staff Dosen",
      ourScore: 4,
      opponentScore: 1),
  Score(
      id: 1,
      ourLogo:
          "assets/images/logo_app.png",
      opponentLogo:
          "https://png.pngtree.com/element_pic/00/00/00/0056a4a011d9d09.jpg",
      clubName: "X-Ber FC",
      opponentName: "Pak Heru FC",
      ourScore: 12,
      opponentScore: 19),
  Score(
      id: 1,
      ourLogo:
          "assets/images/logo_app.png",
      opponentLogo:
          "https://png.pngtree.com/element_pic/00/00/00/0056a4a011d9d09.jpg",
      clubName: "X-Ber FC",
      opponentName: "Chelsea SMI",
      ourScore: 1,
      opponentScore: 1),
];
