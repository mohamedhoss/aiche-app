import 'package:flutter/material.dart';
import 'converter.dart';

class Viscosity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Converter(unitsList:[
      'pa.s',
      'poise(P)',
      'centi Poise(C.P)',
    ],
        unitsMap:{
          'pa.s':0,
          'poise(P)':1,
          'centi Poise(C.P)':2,
        },
        formulas:{
          '0': [1, 10, 1000],
          '1': [0.1, 1, 100],
          '2': [0.001, 0.01, 1],
        },
        fromUnit:'pa.s',
        toUnit: 'poise(P)',);
  }
}
