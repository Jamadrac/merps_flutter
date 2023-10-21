import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chart"),
        ),
        body: Center(
          child: Text(
            "Chart ",
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
