import 'dart:math';
import 'package:flutter/material.dart';
import 'Converter.dart';

class Volume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Converter(unitsList: [
      "m3",
      "cm3",
      "mm3",
      "ft3",
      "Litre",
      "uk gallon",
      "us gallon",
      "barrel",
      "inch3",
    ], unitsMap: {
      "m3": 0,
      "cm3": 1,
      "mm3": 2,
      "ft3": 3,
      "Litre": 4,
      "uk gallon": 5,
      "us gallon": 6,
      "barrel": 7,
      "inch3": 8,
    }, formulas: {
      "0": [1,1000000,1000000000,35.3146667,1000,220.14338,264.17205,6.2898,61023.7441],
      "1": [pow(10, -6),1,1000,3.53146667 * pow(10, -5),0.001,0.00022014337696512,0.000264172052,6.28981077 * pow(10, -6),0.0610237441],
      "2": [pow(10, -9),0.001,1,3.53146667 * pow(10, -8),pow(10, -6),1/4542494.1408,1/3785411.784,6.28981077 * pow(10, -9),6.10237441 * pow(10, -5)],
      "3": [0.0283168466,28316.8466,28316846.6,1,28.3168466,6.22883288,7.48051948,0.178107607,1728],
      "4": [0.001,1000,1000000,0.0353146667,1,0.219969157,0.264172052,0.00628981077,61.0237441],
      "5": [0.00454609188,4546.09188,4546091.88,0.16054372,4.54609188,1,1.20095042,0.0285940577,277.419547],
      "6": [0.00378541178,3785.41178,3785411.78,0.133680556,3.78541178,0.83267384,1,0.0238095238,231],
      "7": [0.158987295,158987.295,158987295,5.61458333,158.987295,34.9723013,42,1,9702],
      "8": [1.6387064 * pow(10, -5),16.387064,16387.064,0.000578703704,0.016387064,0.00360464866,0.00432900433,0.000103071532,1],
    }, fromUnit: "m3", toUnit: "Litre");
  }
}
