import 'package:flutter/material.dart';
import 'dart:math';


class Converter extends StatefulWidget {
  final List<String> unitsList ;
  final Map<String, int> unitsMap;
  final Map<String, List> formulas;
  String fromUnit;
  String toUnit;

  Converter(
      {this.unitsList,
      this.unitsMap,
      this.formulas,
      this.fromUnit,
      this.toUnit});

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _coop;
  double _power = 0.00;
  double _value;
  String _results = "";

  final TextStyle labelStyle = TextStyle(
    fontSize: 16.0,
  );
  final TextStyle resultStyle = TextStyle(
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
                        "From",
                        style: labelStyle,
                      ),
                      DropdownButton(
                        items: widget.unitsList
                            .map((String value) => DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            widget.fromUnit = value;
                          });
                        },
                        value: widget.fromUnit,
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(Icons.code),
                      onPressed: () {
                        setState(() {
                          _coop = widget.fromUnit;
                          widget.fromUnit = widget.toUnit;
                          widget.toUnit = _coop;
                        });
                      }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To", style: labelStyle),
                      DropdownButton(
                        items: widget.unitsList
                            .map((String value) => DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            widget.toUnit = value;
                          });
                        },
                        value: widget.toUnit,
                      )
                    ],
                  ),
                ],
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: _convert,
                child: Text(
                  "Convert",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              SizedBox(height: 25.0),
              Text(
                _results,
                style: resultStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _convert() {
    if (_value != 0 &&
        widget.fromUnit.isNotEmpty &&
        widget.toUnit.isNotEmpty) {
      int from = widget.unitsMap[widget.fromUnit];
      int to = widget.unitsMap[widget.toUnit];

      var multiplier = widget.formulas[from.toString()][to];
      print("the value is : $multiplier");

      setState(() {
        _results =
            "${_value * pow(10, _power)} ${widget.fromUnit} = ${_value * multiplier * pow(10, _power)} ${widget.toUnit}";
      });
    } else {
      setState(() {
        _results = "Please enter a non zero value";
      });
    }
  }
}
