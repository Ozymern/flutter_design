import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  //estilos de caja de texto
  final _styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        // SingleChildScrollView  Este widget es útil cuando tiene una única casilla que normalmente estará completamente visible,es bueno para contenido no paginado y mas estatico
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _createImg(),
              _createTitle(),
              _actions(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText()
            ],
          ),
        ));
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'asfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsfsf'
          'sfsfsfsfsfsfsfsfsfsfgggggggggggggggggggggggggcdistribuyed'
          'istribuyedistribuyedistribuyedistribuyedistribuyed',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 25.0,
        ),
        SizedBox(
          height: 0.3,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _actions() {
    return Row(
      //spaceEvenly se distribuye el espacio de manera proporcional de sus hijos
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'call'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
        child: Row(
          children: <Widget>[
            // expande todo el contenido en el espacio disponible
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'the witcher',
                    overflow: TextOverflow.ellipsis,
                    style: _styleTitle,
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'juego',
                    style: _styleSubtitle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createImg() {
    return FadeInImage(
      image: NetworkImage('https://i.imgur.com/6tqIRPf.jpg'),
      placeholder: AssetImage('assets/placeholder.png'),
      fadeInDuration: Duration(milliseconds: 100),
      width: double.infinity,
      //fit sirve para indicar que la imagen debe ocupar el espacio que tiene
      fit: BoxFit.cover,
      height: 200.0,
    );
  }
}
