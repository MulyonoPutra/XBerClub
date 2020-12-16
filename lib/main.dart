import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/collapse_appbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:xber_futsal_club_app/menu_pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.home,
      page: Schedule(),
    ),
    MyRoute(
      iconData: Icons.person,
      page: Profile(),
    ),
    MyRoute(
      iconData: Icons.schedule,
      page: Information(),
    ),
    MyRoute(
      iconData: Icons.image,
      page: Gallery(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: pages
              .map((p) => Icon(
                    p.iconData,
                    size: 30,
                  ))
              .toList(),
          color: Colors.yellow[600],
          buttonBackgroundColor: Colors.yellow[600],
          backgroundColor: Colors.black,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
        ),
        body: pages[_pageIndex].page);
  }
}

class MyRoute {
  final IconData iconData;
  final Widget page;

  MyRoute({this.iconData, this.page});
}
