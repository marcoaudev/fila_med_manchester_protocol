import 'package:fila_med/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromRGBO(4, 128, 196, 50),
        useMaterial3: true,
        fontFamily: "Montserrat"
      ),
      home: const HomePage(),
    );
  }
}
