import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {

    String _imgURL = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Z7QhL17fVKG9-1qciL7KtAHaE8%26pid%3DApi&f=1&ipt=042dbeff4b05193fb4d4f35014cc5d4e6fe422899dcd6bbec92cc638af6d7960&ipo=images';

    String _imgUrl2 ='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.UM1sd7YomSksjeRdSXC8lAHaFj%26pid%3DApi&f=1&ipt=1196059b283742025be664ac1b3a5b7a7d17b5d40b19fdd93b401d287f238a75&ipo=images';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                child: Image.asset(
                  'assets/images/f4.jpg',
                  fit: BoxFit.cover,)
                  ),
            ),
            
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                child: Image.network(_imgURL,fit: BoxFit.cover,)
                ),
            ),
            
            Expanded(
              child: Container(
                  color: Colors.white,
                child: CircleAvatar(
                  //child: Text('KJ',style: Theme.of(context).textTheme.headlineMedium),//hazır tema kullanımı
                  backgroundImage: NetworkImage(_imgUrl2,),
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.grey,
                ),
                ),
            ),
              ],
            ),
          ),  
       
       Expanded(
         child: Container(
          margin: EdgeInsets.all(20),
          height: 200,
          child: 
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif', 
            image: _imgURL,
            fit: BoxFit.cover,
            )
          ),
        ),
        Expanded(
          child: Placeholder(),
          )

        ],
      ),
    );
  }
}