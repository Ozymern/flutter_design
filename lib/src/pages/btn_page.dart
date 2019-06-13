import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BtnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_tittles(), _btnRounded()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _btnRounded() {
    //creo una tabla
    return Table(
      children: [
        //TableRowposicion horizontal
        TableRow(
          children: [
            _createBtnRounded(Colors.grey, Icons.ac_unit, 'witcher 3'),
            _createBtnRounded(Colors.cyan, Icons.tune, 'final fantasy'),
          ],
        ), //TableRowposicion horizontal
        TableRow(
          children: [
            _createBtnRounded(
                Colors.pinkAccent, Icons.alternate_email, 'pokemon'),
            _createBtnRounded(Colors.blue, Icons.accessibility, 'dragon quest'),
          ],
        ), //TableRowposicion horizontal
        TableRow(
          children: [
            _createBtnRounded(Colors.pinkAccent, Icons.lock, 'batman'),
            _createBtnRounded(Colors.blueAccent, Icons.movie, 'spiderman'),
          ],
        ), //TableRowposicion horizontal
        TableRow(
          children: [
            _createBtnRounded(Colors.grey, Icons.share, 'resient evil'),
            _createBtnRounded(Colors.blueGrey, Icons.ac_unit, 'soul reaver'),
          ],
        ),
      ],
    );
  }

  Widget _createBtnRounded(Color color, IconData icon, String txt) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      //agrego filtro blur, blue desenfoca el fondo
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
        child: Container(
          height: 120.0,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                radius: 25.0,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              Text(
                txt,
                style: TextStyle(color: color),
              ),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _tittles() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Landlubbers are the sails of the shiny hunger.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Combine popcorn, strudel and white bread. soak with dried dill and serve chopped with caviar. Enjoy!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  //personalizar  NavigationBar
  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          //cambio color de fondo
          canvasColor: Colors.indigo,
          //color primario se cambia
          primaryColor: Colors.deepPurpleAccent,
          //cambiar color de los botones
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.movie), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Container()),
        ],
      ),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      //La clase BoxDecoration proporciona una variedad de formas de dibujar un cuadro.
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.3),
              end: FractionalOffset(0.0, 1.0),
              colors: [Colors.blue, Colors.indigo])),
    );

    //rotamos la caja
    final box = Transform.rotate(
      angle: -pi / 4.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70.0),
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.deepPurple])),
      ),
    );
    return Stack(
      children: <Widget>[
        gradient,
        //Positioned cambio la posicion de mi caja
        Positioned(
          child: box,
          top: -100.0,
        )
      ],
    );
  }
}
