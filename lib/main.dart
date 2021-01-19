import 'package:flutter/material.dart';

import 'interfaz/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor Maya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Home(),
    );
  }
}
