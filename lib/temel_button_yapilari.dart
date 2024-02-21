
import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {    
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextButton(onPressed: (){
              debugPrint('Text Button a tiklandi');
            },
            onLongPress:  (){
              debugPrint('uzun basildi');
            },child: Text('Text Button')
            ),

            TextButton.icon(onPressed: (){
              debugPrint('iconlu  Text Button a baglandi');
            }, 
            icon: Icon(Icons.account_tree_sharp), 
            label: Text('Text Button with icon')
            ),

            ElevatedButton(onPressed: (){},
            style: ButtonStyle(
            //backgroundColor:  MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.resolveWith((states){
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal; //basılı tutugu sürece
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.deepPurple; //web de üstüne geldigindeki renk
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            //overlayColor:  MaterialStateProperty.all(Colors.red.withOpacity(0.5)) //tıklandıgındaki effect withOpacity ile de saydalık oranını yazabilirsin
            ), child: Text('ElevatedButton')
            ),


            ElevatedButton.icon(onPressed: (){},
            icon: Icon(Icons.ac_unit),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
            ) ,
            label: Text('Elevation button with icon')
            ),

            OutlinedButton(onPressed: (){},
            child: Text('Outlined Button'),
            ),

            OutlinedButton.icon(onPressed: (){},
            icon: Icon(Icons.accessible_outlined),
            label: Text('Outlined Button with icon'),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
            ),
            ),

            OutlinedButton.icon(onPressed: (){},
            icon: Icon(Icons.accessible_outlined),
            label: Text('Outlined Button with icon'),
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.black,width: 2)
            ),
            ),
          ],
        ),
    );
  }
}