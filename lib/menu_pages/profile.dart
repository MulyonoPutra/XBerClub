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
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(12),
          child: Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: mockPlayers.length,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePlayerDetails(player: mockPlayers[index]),
            )),
                child: PlayerList(
                  player: mockPlayers[index],
                ),
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
