import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/image_witgets.dart';
import 'package:flutter_temel_widgets/myCountPage.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSwatch(primarySwatch: Colors.brown)
        ),
      home: Scaffold(
        appBar: AppBar(title: Text('Image witgets örnekleri',style:TextStyle(color: Colors.white),),backgroundColor: Colors.black,
        centerTitle: true,
        ),
        body:ImageOrnekleri(),
      ),
      //MyCountPage(),
    );
  }
}
