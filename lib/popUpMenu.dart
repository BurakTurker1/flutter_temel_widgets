import 'package:flutter/material.dart';

class PopUpMenuOrnek extends StatefulWidget {
  const PopUpMenuOrnek({super.key});

  @override
  State<PopUpMenuOrnek> createState() => _PopUpMenuOrnekState();
}

class _PopUpMenuOrnekState extends State<PopUpMenuOrnek> {
  String?  _SecilenSehir = ' ';
  List<String> renkler = ['yeşil','kirmizi','mavi','turuncu'];
  @override
  Widget build(BuildContext context) {
  

     
    return Center(
      child: PopupMenuButton(
        icon: Icon(Icons.heart_broken),
        iconColor: Colors.red,
        iconSize: 50,
        onSelected: (String sehir){
          print('Seçilen sehir $sehir');
          setState(() {
            _SecilenSehir =sehir;
          });
        },
        
        itemBuilder: (BuildContext contex){
              return renkler.map((String renk) =>
      PopupMenuItem(child: Text(renk), value: renk),
    ).toList();
          /*
          return<PopupMenuEntry<String>>[
            PopupMenuItem(child: Text('Ankara'),value: 'Ankara'),
            PopupMenuItem(child: Text('İstanbul'),value: 'İstanbul'),
            PopupMenuItem(child: Text('İzmir'),value: 'İzmir'),
            PopupMenuItem(child: Text('Bursa'),value: 'Bursa'),
          ];
          */
        },
        ),
    );
  }
}