import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/menu_pages/pages.dart';

class CollapseAppBar extends StatefulWidget {
  @override
  _CollapseAppBarState createState() => _CollapseAppBarState();
}

class _CollapseAppBarState extends State<CollapseAppBar> {
  TabController _tabController;

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: DefaultTabController(
          length: 4,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height,
                    floating: false,
                    pinned: true,
                    backgroundColor: Colors.black,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Image.asset(
                          'assets/images/logo_app.png',
                          height: 20,
                          color: Colors.grey,
                        ),
                        background: Image.asset(
                          'assets/images/bg.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        indicatorColor: Colors.yellow[400],
                        labelColor: Colors.yellowAccent[400],
                        unselectedLabelColor: Colors.grey,
                        labelStyle:
                            TextStyle(fontFamily: 'Raleway-Medium', fontSize: 13),
                        tabs: [
                          Tab(
                            icon: Icon(Icons.sports),
                            child: Align(
                              alignment: Alignment.center,
                              child:
                                  Text("Match", style: TextStyle(fontFamily: 'RobotoMono')),
                            ),
                          ),
                          Tab(icon: Icon(Icons.photo_album), text: "Gallery"),
                          Tab(icon: Icon(Icons.info), text: "Info"),
                          Tab(icon: Icon(Icons.people), text: "Profile"),
                        ],
                      ),
                    ),
                    pinned: false,
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  Schedule(),
                  Gallery(),
                  Information(),
                  Profile()
                ],
                controller: _tabController,
              )),
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

@override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    child: ListView.builder(
      itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      ),
    ),
  );
}
