import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/home_screen.dart';

// https://icon-icons.com/pt/icone/granizo-nuvem-tempo/2229

//  flutter pub run build_runner watch --delete-conflicting-outputs

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Previsão do tempo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen());
  }
}
