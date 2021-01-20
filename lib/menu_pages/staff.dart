part of 'pages.dart';

class Staff extends StatefulWidget {
  final Official official;
  const Staff({
    Key key,
    this.official,
  }) : super(key: key);
  @override
  _StaffState createState() => _StaffState();
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(12),
          child: Container(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: mockOfficials.length,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {},
                child: OfficialList(
                  official: mockOfficials[index],
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
