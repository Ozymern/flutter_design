import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/src/pages/basic_page.dart';
import 'package:flutter_design/src/pages/btn_page.dart';
import 'package:flutter_design/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //SystemChromeclase para cambiar el color de la barra de estado y la barra de navegación.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Desing',
        initialRoute: 'btn',
        routes: {
          'basic': (BuildContext context) => BasicPage(),
          'scroll': (BuildContext context) => ScrollPage(),
          'btn': (BuildContext context) => BtnPage(),
        });
  }
}
