import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _buildPage1(context),
          _buildPage2(),
        ],
      ),
    );
  }

  Widget _buildPage1(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFF50C1DC),
        ),
        // Image
        Image.asset(
          'assets/scroll-1.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  '11°',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .copyWith(color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  'Miercoles',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .copyWith(color: Colors.white),
                ),
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.keyboard_arrow_down,
                size: 70.0,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPage2() {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFF50C1DC),
        ),
        Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
