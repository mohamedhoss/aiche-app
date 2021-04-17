import 'package:flutter/material.dart';

import '../Constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text("Vision", style: kHeadTextStyle),
          ),
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Text(
              "Chasing doesn’t mean that you will get what you chase but the"
              " more you chase the more success you catch. Perfection is"
              " a flawless state where everything is exactly right and that"
              " is mainly impossible. The question is what prevents "
              "everything to be exactly right? How to restrict the "
              "consequences? Answering these questions requires what"
              " we called chasing the perfection.\n'Chase the Perfection to Catch Excellence'",
              style: kTopicTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text("Mission", style: kHeadTextStyle),
          ),
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Text(
              "-Establishing strong base and expanding in Suez university."
              "\n-Depending on detailed plan put by high board members."
              "\n-Members passion will be considered as a continuous goal along the season."
              "\n-Analyzing every single problem and making sure of preventing occurring it again."
              "\n-Integrating among committees and removing the barriers",
              style: kTopicTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text("ABOUT AIChE SUEZ", style: kHeadTextStyle),
          ),
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Text(
              "AIChE, Suez University "
              "Student Chapter (AICHE SUSC) was founded in 2013 as a branch"
              " from AICHE International, and it includes a group of "
              "undergraduate students, dedicated to the advancement "
              "of the academic learning techniques, and personal "
              "development systems, trying to create links between "
              "the university and the industry.",
              style: kTopicTextStyle,
            ),
          ),
          Center(
            child: Text("ABOUT AICHE INTERNATIONAL", style: kHeadTextStyle),
          ),
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Text(
              " AICHE stands for \"American Institute of Chemical Engineers\""
              " is the world's leading orgnization for chemical "
              "engineering professionals. It's nonprofit orgnization "
              "with more than 60,000 members from over 110 countries"
              " worldwide.",
              style: kTopicTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
