import 'package:flutter/material.dart';
import 'Unit Converter/Home Converter.dart';

final primeColor = Color(0xff031727);
final secondaryColor = Colors.white70;
final firstColor = Colors.white;

final kHeadTextStyle = TextStyle(
  color: Colors.blue,
  fontFamily: "Montserrat",
  fontWeight: FontWeight.w700,
  fontSize: 20.00,
);
final kTopicTextStyle = TextStyle(
  fontFamily: "Montserrat",
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 16.00,
);

List<String> years = [
  "Choose the year",
  "Prep",
  "First",
  "Second",
  "Third",
  "Fourth"
];

List<String> terms = [
  "Choose the Term",
  "First",
  "Seconds",
];

Drawer getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage("assets/images/AIChEProfilelogo2.png"),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UnitConverterScreen(),
              ),
            );
          },
          child: ListTile(
            leading: Icon(Icons.message),
            title: Text('Unit Converter'),
          ),
        ),
      ],
    ),
  );
}
