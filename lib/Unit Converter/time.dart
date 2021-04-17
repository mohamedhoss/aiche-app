import 'package:flutter/material.dart';
import 'Converter.dart';
class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Converter(unitsList:[
      "sec",
      "min",
      "hr",
      "day",
      "week",
      "month",
      "year",
    ],
        unitsMap:{
          "sec"   : 0,
          "min"   : 1,
          "hr"    : 2,
          "day"   : 3,
          "week"  : 4,
          "month" : 5,
          "year"  : 6,
        },
        formulas:{
          '0': [1, 1/60, 1/3600, 1/86400, 1/604800, 1/2592000, 1/31557600],
          '1': [60, 1, 1/60, 1/1440, 1/10080, 1/43200, 1/525960],
          '2': [3600, 60, 1, 1/24, 1/168, 1/720, 1/8766],
          '3': [86400, 1440, 24, 1, 1/7, 1/30, 1/365.25],
          '4': [604800, 10080, 168, 7, 1, 1/4.28, 1/52],
          '5': [2592000, 43200, 720, 30, 4.28, 1, 1/12],
          '6': [31557600, 525960, 8766, 365.25, 52, 12, 1],
        },
        fromUnit:"sec",
        toUnit: "min");
  }
}
