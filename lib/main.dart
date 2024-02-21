import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropDown_button.dart';
import 'package:flutter_temel_widgets/image_witgets.dart';
import 'package:flutter_temel_widgets/myCountPage.dart';
import 'package:flutter_temel_widgets/temel_button_yapilari.dart';
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
        colorScheme:ColorScheme.fromSwatch(primarySwatch: Colors.red,backgroundColor: Colors.white),
        outlinedButtonTheme: OutlinedButtonThemeData(style:ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange),
          foregroundColor:MaterialStateProperty.all(Colors.white), 
          overlayColor: MaterialStateProperty.all(Colors.red)),
          
          )
        ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter widgets Örnekleri',style:TextStyle(color: Colors.white),),backgroundColor: Colors.black,
        centerTitle: true,
        ),
        body:DropDown_Button(),
        //TemelButonlar(),
        //ImageOrnekleri(),
      ),
      //MyCountPage(),
    );
  }
}
