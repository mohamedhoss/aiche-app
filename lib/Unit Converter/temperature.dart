import 'package:flutter/material.dart';
import 'dart:math';

class Temperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TemperatureFull();
  }
}


class TemperatureFull extends StatefulWidget {
  @override
  _TemperatureFullState createState() => _TemperatureFullState();
}

class _TemperatureFullState extends State<TemperatureFull> {
  String _coop;
  double _power = 0.00;
  double _value ;
  String _results = "";
  List<String> mesaures = [
    "C",
    "K",
    "R",
    "F",
  ];
  Map<String, int> mesauresMap = {
    "C": 0,
    "K": 1,
    "R": 2,
    "F": 3,
  };

  Map<String, List<double>> formulasAdder = {
    '0': [0, 273, 491.4, 32],
    '1': [-273, 0, 0, -459.67],
    '2': [-273.15, 0, 0, -460],
    '3': [-17.7777777778, 255.555555556, 460, 0],
  };
    Map<String, List<double>> formulasMulti = {
    '0': [1, 1, 1.8,1.8],
    '1': [1, 1, 1.8, 1.8],
    '2': [5/9, 1, 1, 1],
    '3': [5/9, 5/9, 1, 1],
  };
  String _fromMesaures = "C";
  String _toMesaures = "K";

  final TextStyle labelStyle = TextStyle(
    fontSize: 16.0,
  );
  final TextStyle resultSyle = TextStyle(
    color: Colors.blue,
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.00,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Unit Converter',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Inter the Value',
                ),
                onChanged: (value) {
                  setState(() {
                    _value = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 25.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Power of ten',
                ),
                onChanged: (value) {
                  setState(() {
                    _power = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: labelStyle,
                      ),
                      DropdownButton(
                        items: mesaures
                            .map((String value) => DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _fromMesaures = value;
                            _convert();
                          });
                        },
                        value: _fromMesaures,
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(Icons.code),
                      onPressed: () {
                        setState(() {
                          _coop = _fromMesaures;
                          _fromMesaures = _toMesaures;
                          _toMesaures = _coop;
                        });
                      }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('To', style: labelStyle),
                      DropdownButton(
                        items: mesaures
                            .map((String value) => DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _toMesaures = value;
                            _convert();
                          });
                        },
                        value: _toMesaures,
                      )
                    ],
                  ),
                ],
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: _convert,
                child: Text(
                  'Convert',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              SizedBox(height: 25.0),
              Text(
                _results,
                style: resultSyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _convert() {
    if (_value != 0 && _fromMesaures.isNotEmpty && _toMesaures.isNotEmpty) {
      int from = mesauresMap[_fromMesaures];
      int to = mesauresMap[_toMesaures];

      var adder = formulasAdder[from.toString()][to];
      var multiplier =formulasMulti[from.toString()][to];
      setState(() {
         _results =
          "${_value * pow(10, _power)} $_fromMesaures = ${(_value * pow(10, _power) * multiplier) + adder} $_toMesaures";
      });

    } else {
      setState(() {
        _results = "Please enter a non zero value";
      });
    }
  }
}


