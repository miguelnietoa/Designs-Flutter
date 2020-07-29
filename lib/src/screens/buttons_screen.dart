import 'dart:math';

import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildBackground(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    print('Tamaño pinkBox: ${screenSize.width * 0.9}');
    print('Tamaño top: ${-100 / screenSize.width}');

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );
    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: screenSize.width * 0.9,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );
    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -screenSize.width * 0.25,
          child: pinkBox,
        ),
      ],
    );
  }
}
