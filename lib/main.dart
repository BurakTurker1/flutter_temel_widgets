import 'package:flutter/material.dart';
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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' My Counter AppBar'),backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butona Basilma miktari',style: TextStyle(fontSize: 30),),
            Text(_sayac.toString(),
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        debugPrint("buttona tiklandi ve sayac degeri$_sayac");
        sayaciArttir();
      },
      child:Icon(Icons.add),
      ) ,
    );
  }

  void sayaciArttir() {
    setState(() {
        _sayac++;
    });
}
}

