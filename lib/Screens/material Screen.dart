import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constant.dart';

class MaterialScreen extends StatefulWidget {
  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  String _year = "prep";
  String _semester = "First";
  List<String> _years = ["prep", "First", "Second", "Third", "Fourth"];
  List<String> _semesters = ["First", "Second"];
  Map _yearsMap = {"prep": 0, "First": 1, "Second": 2, "Third": 3, "Fourth": 4};
  Map _semestersMap = {"First": 0, "Second": 1};
  Map<String, List<String>> urls = {
    "0": [
      "https://drive.google.com/drive/folders/1zEN_zswcmgCjksWx_ol0l4aD0kCgQSFj?sort=13&direction=a",
      "https://drive.google.com/drive/folders/16_jqR-fUzNWeQuj5sjqfhJVczbciFfGy?direction=a"
    ],
    "1": [
      "https://drive.google.com/drive/folders/1ZOf1M1nvYF5wI8jx8mgALJ6IENbRR2EW?direction=a",
      "https://drive.google.com/drive/folders/1BAe1-jrpR3l40O5Nf7dhrxNlc6rPOhEr?direction=a"
    ],
    "2": [
      "https://drive.google.com/drive/folders/1ltfC43-QYEwqTnrTqDc9RXzaWCz-xv-v?direction=a",
      "https://drive.google.com/drive/folders/1wm9JvfFBZSL7E1xl4LryniP5gOakWOzL?direction=a"
    ],
    "3": [
      "https://drive.google.com/drive/folders/1jZHPA2wyZkrZcKOBEJi6lyyB4RESnVzQ?direction=a",
      "https://drive.google.com/drive/folders/1gs7kzNKIxKKRSnq26Ik182YgNMgFDo6W?direction=a"
    ],
    "4": [
      "https://drive.google.com/drive/folders/1IfPHJAYKMzqavuCkE5DF3bIUqt3XpjDq?direction=a",
      "https://drive.google.com/drive/folders/1Rweo_-JTEZOYYIXn37-W9eZ5hmzjCzkB?direction=a"
    ],
  };

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage("assets/asset/blue.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DropdownButton(
              isExpanded: true,
              underline: Divider(
                color: primeColor,
                thickness: 1.0,
              ),
              items: _years
                  .map((String value) => DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _year = value;
                });
              },
              value: _year,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DropdownButton(
              isExpanded: true,
              underline: Divider(
                color: primeColor,
                thickness: 1.0,
              ),
              items: _semesters
                  .map((String value) => DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _semester = value;
                });
              },
              value: _semester,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.00)),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      "Find",
                      style: TextStyle(color: Colors.white, fontSize: 25.00),
                    ),
                  ],
                ),
                onPressed: () {
                  int from = _yearsMap[_year];
                  int to = _semestersMap[_semester];

                  String url = urls[from.toString()][to];
                  _launchURL(url);
                }),
          )
        ],
      ),
    );
  }
}
