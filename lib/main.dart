import 'package:flutter/material.dart';
import 'package:qazonamozlari/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Qazo namozlari",
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
        initialRoute: "splash",
        onGenerateRoute:MyRoute.instance.onGenrateRoute
    );
  }
}
