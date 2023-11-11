import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('ASK ME ANYTHING')),
            backgroundColor: Colors.blue.shade900,
          ),
          backgroundColor: Colors.blue.shade400,
          body: problemSolver(),
        ),
      ),
    ),
  );
}

class problemSolver extends StatefulWidget {
  @override
  State<problemSolver> createState() => _problemSolverState();
}

class _problemSolverState extends State<problemSolver> {
  int ballNumber = 1;

  void changeNumber() {
    setState(
      () {
        ballNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            changeNumber();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
