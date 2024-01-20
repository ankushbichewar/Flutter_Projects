import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment7 extends StatelessWidget{
   const Assinment7({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle:true,
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
      body: Center(child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
          height: 300,
          width: 150,
          ),
          Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
          height: 300,
          width: 150,
          ),
          Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
          height: 300,
          width: 150,
          ),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
          height: 300,
          width: 150,
          ),
          Image.network("https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
          height: 300,
          width: 150,
          )
        ],
      )),
      ),
    );

   }
}