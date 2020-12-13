part of 'pages.dart';

class ProfilePlayerDetails extends StatefulWidget {
  final Function onBackButtonPressed;
  final Player player;

  const ProfilePlayerDetails({Key key, this.onBackButtonPressed, this.player})
      : super(key: key);

  @override
  _ProfilePlayerDetailsState createState() => _ProfilePlayerDetailsState();
}

class _ProfilePlayerDetailsState extends State<ProfilePlayerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.player.profilPicture),
                  fit: BoxFit.cover),
            ),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackButtonPressed != null) {
                            widget.onBackButtonPressed();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(3),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                widget.player.name.toUpperCase(),
                                style: GoogleFonts.firaCode(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),

                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                          child: Text(
                            widget.player.dscriptions,
                            style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
