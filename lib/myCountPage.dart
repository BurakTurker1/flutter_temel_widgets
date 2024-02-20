import 'package:flutter/material.dart';

class MyCountPage extends StatefulWidget {
  const MyCountPage({super.key});

  @override
  State<MyCountPage> createState() => _MyCountPageState();
}

class _MyCountPageState extends State<MyCountPage> {
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