import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage("assets/asset/blue.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Text(
        "Coming Soon",
        style: TextStyle(
          fontSize: 30.00,
          color: Colors.black,
        ),
      )),
    );
  }
}
