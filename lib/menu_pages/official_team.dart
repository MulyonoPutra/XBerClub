part of 'pages.dart';

class OfficialTeam extends StatefulWidget {
  final PlayerList playerList;
  const OfficialTeam({
    Key key,
    this.playerList,
  }) : super(key: key);
  @override
  _OfficialTeamState createState() => _OfficialTeamState();
}

class _OfficialTeamState extends State<OfficialTeam> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Container(
        padding: EdgeInsets.only(top: 30),
        color: Colors.black45,
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      indicatorColor: Colors.amber[400].withOpacity(0.8),
                      labelColor: Colors.amber[400].withOpacity(0.8),
                      unselectedLabelColor: Colors.grey,
                      labelStyle:
                          TextStyle(fontFamily: 'Raleway-Medium', fontSize: 13),
                      tabs: [
                        Tab(
                          icon: Icon(Icons.person_pin_circle),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Player",
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 14)),
                          ),
                        ),
                        Tab(
                          icon: Icon(Icons.person_pin_circle_rounded),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Official",
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pinned: false,
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Profile(),
                Staff(),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
