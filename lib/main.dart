import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Screens/eventScreen.dart';
import 'Screens/homeScreen.dart';
import 'Screens/BlogScreen.dart';
import 'Screens/material Screen.dart';
import 'Screens/ourBoard.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BB(),
    ),
  );
}

class BB extends StatefulWidget {
  @override
  createState() => _BBState();
}

class _BBState extends State<BB> {
  int currentIndex = 3;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(
        title: Text("AIChE"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: currentIndex == 1
                ? EventsScreen()
                : currentIndex == 2
                    ? OurBoard()
                    : currentIndex == 3
                        ? HomeScreen()
                        : currentIndex == 4
                            ? BlogScreen()
                            : MaterialScreen(),
          ),
          Container(
            width: size.width,
            height: 80,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, 80.00),
                  painter: NavBar(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                    onPressed: () {
                      setBottomBarIndex(3);
                    },
                    backgroundColor: Colors.blue,
                    elevation: 0.1,
                    child: Icon(
                      Icons.home,
                      color: currentIndex == 3 ? firstColor : secondaryColor,
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      currentIndex == 1
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.event,
                                    size: 23,
                                    color: currentIndex == 1
                                        ? firstColor
                                        : secondaryColor,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(1);
                                  },
                                ),
                                Text(
                                  "Event",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : IconButton(
                              icon: Icon(
                                Icons.event,
                                color: currentIndex == 1
                                    ? firstColor
                                    : secondaryColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(1);
                              },
                            ),
                      currentIndex == 2
                          ? Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.quoteRight,
                                      color: currentIndex == 2
                                          ? firstColor
                                          : secondaryColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(2);
                                    }),
                                Text(
                                  "Quotes",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : IconButton(
                              icon: Icon(
                                FontAwesomeIcons.quoteRight,
                                color: currentIndex == 2
                                    ? firstColor
                                    : secondaryColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(2);
                              }),
                      Container(
                        width: size.width * 0.20,
                      ),
                      currentIndex == 4
                          ? Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.newspaper,
                                      color: currentIndex == 4
                                          ? firstColor
                                          : secondaryColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(4);
                                    }),
                                Text(
                                  "Blog",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : IconButton(
                              icon: Icon(
                                FontAwesomeIcons.newspaper,
                                color: currentIndex == 4
                                    ? firstColor
                                    : secondaryColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(4);
                              }),
                      currentIndex == 5
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.userGraduate,
                                      color: currentIndex == 5
                                          ? firstColor
                                          : secondaryColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(5);
                                    }),
                                Text(
                                  "Material",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          : IconButton(
                              icon: Icon(
                                FontAwesomeIcons.userGraduate,
                                color: currentIndex == 5
                                    ? firstColor
                                    : secondaryColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(5);
                              }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
