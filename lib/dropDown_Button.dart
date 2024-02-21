import 'package:flutter/material.dart';

class DropDown_Button extends StatefulWidget {
  const DropDown_Button({super.key});

  @override
  State<DropDown_Button> createState() => _DropDown_ButtonState();
}

class _DropDown_ButtonState extends State<DropDown_Button> {
  String?  _secilmisSehir = null;
  List<String> _TumSehirler = ['Ankara','izmir','istanbul','Bursa'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        icon: Icon(Icons.swipe_down_alt_sharp),
        hint: Text('Şehir Seçiniz'),
        items: _TumSehirler.map((String oAnkiSehir) => DropdownMenuItem(child: Text(oAnkiSehir),value: oAnkiSehir,)).toList(),

        /*[
          DropdownMenuItem(child: Text('Ankara Sehri'),value: 'Ankara'),
          DropdownMenuItem(child: Text('izmir Sehri'),value: 'izmir'),
          DropdownMenuItem(child: Text('isparta Sehri'),value: 'isparta'),
          DropdownMenuItem(child: Text('balikesir Sehri'),value: 'balikesir'),
        ],
        */
        value: _secilmisSehir,
        onChanged: (String? yeni){
          setState(() {
          print('çalisti $yeni');
          _secilmisSehir = yeni;
          });
        },
      ),
    );
  }
}