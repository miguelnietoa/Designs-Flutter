import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildImage(),
            _buildTitle(context),
            _buildActions(context),
            _buildText(),
            _buildText(),
            _buildText(),
            _buildText(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: double.infinity,
      child: Image.asset(
        'assets/landscape.jpg',
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Oeschinen Lake Campground',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 7.0),
                  Text('Kandersteg, Switzerland'),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red),
            Text('41')
          ],
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget _buildText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
