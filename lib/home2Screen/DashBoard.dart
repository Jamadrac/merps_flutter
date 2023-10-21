import 'package:flutter/material.dart';

class DashBorad extends StatefulWidget {
  const DashBorad({super.key});

  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBorad"),
        ),
        body: Center(
          child: Text(
            "DashBorad ",
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
