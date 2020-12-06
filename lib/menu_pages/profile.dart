part of 'pages.dart';

class Profile extends StatefulWidget {
  final PlayerList playerList;
  const Profile({
    Key key,
    this.playerList,
  }) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Container(
          height: 100,
          margin: EdgeInsets.all(12),
          child: Expanded(
            child: StaggeredGridView.countBuilder(
              // physics: new BouncingScrollPhysics(),
              crossAxisCount: 4,
              itemCount: mockPlayers.length,
              itemBuilder: (BuildContext context, int index) => PlayerList(
                player: mockPlayers[index],
              ),
              staggeredTileBuilder: (_) => StaggeredTile.fit(2),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}
