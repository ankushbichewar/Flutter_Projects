
import 'package:flutter/material.dart';

class Assinment1 extends StatelessWidget{
 const Assinment1({super.key});



  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: const Text("Netflix"),backgroundColor: Colors.red,),
      body:SingleChildScrollView(child:
       Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          SizedBox(height: 20,),
          Container(child: Text("Movies",),),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,        
                  children: [

                  Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  ),
                  Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"
                  ),
                  Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg")
                ]
                ),
              ),
              
              //webSeries
              SizedBox(height: 20,),
              Container(child: Text("Web Series",),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [Container(child:Row(
                  children:[
                  Image.network(
                    "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      height: 400,
                      width: 200,
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      height: 500,
                      width: 200,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                     height: 400,
                      width: 200,
                  ),

                  ]
                 )
                 ),
                 
                 ],
                ),
              ),

              //Most Popular

            //  SizedBox(height: 20,),
              Container(child: Text("Most Popular",),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    height: 400,
                    width: 200,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    height: 400,
                    width: 200,
                  ),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    height: 400,
                    width: 200,
                  ),
                 ],
                ),
              )

            ],
            
          )
            
          )    
    );
  }

}