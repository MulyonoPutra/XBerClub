import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/widget/bottom_navbar.dart';

class CollapseAppBar extends StatefulWidget {
  @override
  _CollapseAppBarState createState() => _CollapseAppBarState();
}

class _CollapseAppBarState extends State<CollapseAppBar> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the X-Ber application'),
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
        backgroundColor: Colors.black45,
        body: WillPopScope(
          onWillPop: _onBackPressed,
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
                        title: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar()));
                          },
                          child: Image.asset(
                            'assets/images/logo_app.png',
                            height: 40,
                          ),
                        ),
                        background: Image.asset(
                          'assets/images/bg.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ];
              },
              body: Container(
                child: BottomNavBar(),
              )),
        ));
  }
}
