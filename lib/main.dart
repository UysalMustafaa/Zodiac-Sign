import 'package:flutter/material.dart';
import 'burc_detay.dart';
import 'burc_liste.dart';

void main () => runApp(MyApp());

class   MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,

      initialRoute: "/burcListesi",
      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
        "/burcDetay/burc" : (context) => BurcDetay(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }

}