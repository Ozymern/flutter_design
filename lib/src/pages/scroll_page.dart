import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //PageView, una lista desplazable que funciona página por página. similar a un diario
        body: PageView(
      //cambio la direccion del scroll para que sea vertical
      scrollDirection: Axis.vertical,
      children: <Widget>[_page1(), _page2()],
    ));
  }

  Widget _page1() {
    //stack es un layaut el cual apila los children, el orden impota, ya que el ultimo es el primero que se mostrara
    return Stack(
      children: <Widget>[
        _backgroundImg(),
        _text(),
      ],
    );
  }

  Widget _text() {
    final styleText = TextStyle(
      color: Colors.white,
      fontSize: 50.0,
    );
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: styleText,
          ),
          Text(
            'Sabado',
            style: styleText,
          ),
          //Expanded va a estirar el container lo maximo posible respetando el espacio de sus hermanos
          Expanded(child: Container()),
          Icon(Icons.arrow_downward, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _backgroundImg() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/portada-valdivia.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(0, 11, 33, 1),
      child: Center(
        child: ButtonTheme(
          minWidth: 120.0,
          height: 40.0,
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
