part of 'pages.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Column(
          children: mockScores
              .map((e) => Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 10, 11),
                    child: GestureDetector(
                      onTap: () {},
                      child: MatchListItem(
                        score: e,
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
