import 'volume.dart';
import 'viscosity.dart';
import 'package:flutter/material.dart';
import 'area.dart';
import 'pressure.dart';
import 'length.dart';
import 'temperature.dart';
import 'time.dart';


class UsableCard extends StatelessWidget {
  UsableCard(
      { @required this.text,
        @required this.onPress,
        @required this.image,
        @required this.con});
  final Image image;
  final String text;
  final Function onPress;
  final BuildContext con;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(con).size.width;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width * 0.35,
        margin: EdgeInsets.all(width * (0.3 / 5)),
        padding: EdgeInsets.all(8.00),
        decoration: BoxDecoration(
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          border: Border.all(
            width: 6.00,
            color: Colors.blue,
          ),
        ),
        child: Column(
          children: [
            image,
            SizedBox(height: 10,),
            Text(text,
              softWrap: true,
              textScaleFactor: 1,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class UnitConverterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Unit Converter"),
        elevation: 0,
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        width: width,
        color: Colors.blue,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border:Border.all(
              color: Colors.blue,
              width: 10.00,
              style: BorderStyle.solid,
            )
            ,
            borderRadius: BorderRadius.all(
              Radius.circular(30.00),
            ),
          ),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Table(
                  children: [
                    TableRow(
                      children: [UsableCard(
                        con: context,
                        text: "pressure",
                        image: Image.asset("assets/images/gauge.png"),
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pressure(),
                            ),
                          );
                        },
                      ),
                        UsableCard(
                          con: context,
                          text: "Length",
                          image: Image.asset("assets/images/measuring-tape.png"),
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Length(),
                              ),
                            );
                          },
                        ),],
                      ),
                TableRow(
                  children: [
                    UsableCard(
                      con: context,
                      text: 'Area',
                      image: Image.asset("assets/images/area.png"),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Area(),
                          ),
                        );
                      },
                    ),
                    UsableCard(
                      con: context,
                      text: "viscosity",
                      image: Image.asset("assets/images/blood-sample.png"),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Viscosity(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    UsableCard(
                      con: context,
                      text: 'Temperature',
                      image: Image.asset("assets/images/temperature.png"),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TemperatureFull(),
                          ),
                        );
                      },
                    ),
                    UsableCard(
                      con: context,
                      text: "Time",
                      image: Image.asset("assets/images/chronometer.png"),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Time(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
                  UsableCard(
                      con: context,
                      text: 'Volume',
                      image: Image.asset("assets/images/cylinder.png"),
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Volume(),
                          ),
                        );
                      },
                    ),
          ]),
        ]),
      ),
    ));
  }
}