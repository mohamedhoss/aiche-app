import 'dart:math';
import 'converter.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Converter(
      unitsList: [
        'm2 || centiare(ca)',
        'Hectares(ha)',
        'dm2',
        'cm2',
        'mm2',
        'Ground',
        'Km2',
        'ft2',
        'inch2',
        'sq.yd',
        'acre',
        'pogon',
      ],
      unitsMap: {
        'm2 || centiare(ca)': 0,
        'Hectares(ha)': 1,
        'dm2': 2,
        'cm2': 3,
        'mm2': 4,
        'Ground': 5,
        'Km2': 6,
        'ft2': 7,
        'inch2': 8,
        'sq.yd': 9,
        'acre': 10,
        'pogon': 11,
      },
      formulas: {
        '0': [
          1.00,
          0.0001,
          100.00,
          10000.00,
          1000000.00,
          0.0044849626736291,
          pow(10, -6),
          10.7639104,
          1550.0031,
          1.19599005,
          0.00024710538149159,
          0.0002
        ],
        '1': [
          10000.00,
          1.00,
          1000000.00,
          100000000.00,
          10000000000.00,
          44.84304933,
          0.01,
          107639.104,
          15500031.00,
          11959.9005,
          2.47105381,
          2.00,
        ],
        '2': [
          0.01,
          pow(10, -6),
          1.00,
          100.00,
          10000.00,
          4.484962674 * pow(10, -5),
          0.00000001,
          0.1076391041671,
          15.500031000062,
          0.011959900463011,
          1 / 404685.6422,
          2 * pow(10, -6),
        ],
        '3': [
          pow(10, -4),
          pow(10, -8),
          0.01,
          1.00,
          100.00,
          0.00000044849626736291,
          pow(10, -10),
          0.001076391041671,
          0.15500031000062,
          0.00011959900463011,
          1 / 40468564.22,
          2 * pow(10, -8),
        ],
        '4': [
          pow(10, -6),
          pow(10, -10),
          0.0001,
          0.01,
          1.00,
          4.4849626736291 * pow(10, -9),
          pow(10, -12),
          1.07639104 * pow(10, -5),
          0.0015500031,
          1.19599005 * pow(10, -6),
          2.47105381 * pow(10, -10),
          2 * pow(10, -10),
        ],
        '5': [
          222.967296,
          0.0222967296,
          22296.7296,
          2229672.96,
          2.22967296 * pow(10, 8),
          1.00,
          0.000222967296,
          2400.00,
          345600.00,
          266.66666666667,
          0.055096370025155,
          0.0445934592,
        ],
        '6': [
          pow(10, 6),
          100.00,
          pow(10, 8),
          10000000000.00,
          1000000000000.00,
          4484.9626736291,
          1.00,
          10763910.41671,
          1.5500031000062 * pow(10, 9),
          1195990.0463011,
          247.10516301528,
          200.0,
        ],
        '7': [
          0.09290304,
          9.290304 * pow(10, -6),
          9.290304,
          929.0304,
          92903.04,
          0.00041666666666667,
          9.290304 * pow(10, -8),
          1,
          144,
          0.111111111,
          2.29568411 * pow(10, -5),
          1.8580608 * pow(10, -5),
        ],
        '8': [
          0.00064516,
          6.4516 * pow(10, -8),
          0.064516,
          6.4516,
          645.16,
          0.0000028935185185185,
          6.4516 * pow(10, -10),
          0.00694444444,
          1,
          0.000771604938,
          1.59422508 * pow(10, -7),
          1.29032 * pow(10, -7),
        ],
        '9': [
          0.83612736,
          8.3612736 * pow(10, -5),
          83.6127,
          8361.2736,
          836127.36,
          0.00375,
          8.3612736 * pow(10, -7),
          9,
          1296,
          1,
          0.00020661157,
          1.67225472 * pow(10, -4),
        ],
        '10': [
          4046.85642,
          0.404685642,
          404685.6422,
          40468564.2,
          4.04685642 * pow(10, 9),
          18.150016045402,
          0.00404685642,
          43560,
          6272640,
          4840,
          1,
          0.809371284,
        ],
        '11': [
          5000,
          5000 * 0.0001,
          5000 * 100.00,
          5000 * 10000.00,
          5000 * 1000000.00,
          5000 * 0.0044849626736291,
          5000 * pow(10, -6),
          5000 * 10.7639104,
          5000 * 1550.0031,
          5000 * 1.19599005,
          5000 * 0.00024710538149159,
          1
        ],
      },
      fromUnit: "m2 || centiare(ca)",
      toUnit: 'Hectares(ha)',
    );
  }
}