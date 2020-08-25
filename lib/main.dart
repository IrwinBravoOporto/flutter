import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyWork',
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
        accentColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Developer",
          textAlign: TextAlign.center,
        ),
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlutterLogo(
            size: 200,
            colors: Colors.red,
          ),
          tarjeta(),
        ],
      ),
    ),
  );
}

Widget tarjeta() {
  return ListTile(
    title: Text(
      "Irwin Bravo Oporto",
      textAlign: TextAlign.left,
    ),
    subtitle: Text(
      "@irwinIOS",
      textAlign: TextAlign.left,
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          color: Colors.redAccent,
        )
      ],
    ),
  );
}
