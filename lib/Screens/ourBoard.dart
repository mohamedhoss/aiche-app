import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class OurBoard extends StatefulWidget {
  @override
  _OurBoardState createState() => _OurBoardState();
}

class _OurBoardState extends State<OurBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage("assets/images/blue.jpg"),
            fit: BoxFit.cover),
      ),
      child: ListView(
        children: [],
      ),
    );
  }

  _memberCard({
    @required String img,
    @required String faceBook,
    @required String linkedIn,
    @required String name,
    @required String position,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 400.00,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 400.00,
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            bottom: 0.00,
            child: Container(
              height: 100.00,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(position),
                  Text(name),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100.00,
            left: 30.00,
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
              onPressed: () {
                _launchURL(faceBook);
              },
            ),
          ),
          Positioned(
            bottom: 100,
            left: 60.00,
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedin,
              ),
              onPressed: () {
                _launchURL(linkedIn);
              },
            ),
          )
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
