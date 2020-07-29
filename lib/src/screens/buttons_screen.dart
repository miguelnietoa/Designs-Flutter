import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
    )); */
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildBackground(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildTitles(context),
                _buildRoundedButtons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
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

  Widget _buildTitles(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'Classify this transaction into a particular category',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container(),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundedButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _buildRoundedButton(Colors.blue, Icons.border_all, 'General'),
            _buildRoundedButton(
                Colors.purpleAccent, Icons.directions_bus, 'Transport')
          ],
        ),
        TableRow(
          children: [
            _buildRoundedButton(Colors.pinkAccent, Icons.shop, 'Shopping'),
            _buildRoundedButton(
                Colors.amberAccent, Icons.monetization_on, 'Money')
          ],
        ),
        TableRow(
          children: [
            _buildRoundedButton(
                Colors.lightBlueAccent, Icons.movie_filter, 'Entertainment'),
            _buildRoundedButton(
                Colors.green, Icons.local_grocery_store, 'Grocery')
          ],
        ),
        TableRow(
          children: [
            _buildRoundedButton(Colors.orange, Icons.insert_drive_file, 'File'),
            _buildRoundedButton(Colors.yellow, Icons.cloud, 'Cloud')
          ],
        ),
      ],
    );
  }

  Widget _buildRoundedButton(Color color, IconData icon, String text) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icon, size: 30.0),
                ),
                Text(text, style: TextStyle(color: color)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
