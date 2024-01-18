import 'package:flutter/material.dart';

class Assinment1 extends StatefulWidget{
  const Assinment1({super.key});
  State<Assinment1> createState()=> _Assinment1State();

}
 class _Assinment1State extends State<Assinment1>{
  
  bool _colorchange1=false;
  bool _colorchange2=false;
  bool _colorchange3=false;
  bool _colorchange4=false;
  bool _colorchangebook1=false;
  bool _colorchangebook2=false;
  bool _colorchangebook3=false;
  bool _colorchangebook4=false;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
    
      appBar: AppBar(backgroundColor: Colors.white,
      title:const Text("Instagram",
      style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black,fontSize: 30),
      ),
      actions: [const Icon(Icons.favorite_rounded,color: Colors.red,)],
      ),

    body:SingleChildScrollView(
    child: Column(
      children: [
           Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: 900,
         height: 200,
         ),
            ),
         Row(
          children: [
               IconButton(onPressed: (){
              setState(() {
                _colorchange1=!_colorchange1;
              });
            }, icon: Icon(
              _colorchange1?
              Icons.favorite_rounded:Icons.favorite_outline_outlined,
              color: _colorchange1? Colors.red:Colors.black
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
            const Spacer(),
             IconButton(onPressed: (){
              setState(() {
                _colorchangebook1=!_colorchangebook1;
              });
            }, icon: Icon(
              _colorchangebook1?
              Icons.bookmark_rounded:Icons.bookmark_outline_outlined,
              color: _colorchangebook1? Color.fromARGB(255, 226, 191, 87):Colors.black
            )),
             
           
          ],
         )
          ],
           ),
            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
          child:Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: 900,
         height: 200,
         ),
            ),
         Row(
          children: [
            IconButton(onPressed: (){
              setState(() {
                _colorchange2=!_colorchange2;
              });
            }, icon: Icon(
              _colorchange2?
              Icons.favorite_rounded:Icons.favorite_outline_outlined,
              color: _colorchange2? Colors.red:Colors.black
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
            const Spacer(),
             IconButton(onPressed: (){
              setState(() {
                _colorchangebook2=!_colorchangebook2;
              });
            }, icon: Icon(
              _colorchangebook2?
              Icons.bookmark_rounded:Icons.bookmark_outline_outlined,
              color: _colorchangebook2? Color.fromARGB(255, 226, 191, 87):Colors.black
            )),
           
          ],
         )
          ],
            ),
             Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
             IconButton(onPressed: (){
              setState(() {
                _colorchange3=!_colorchange3;
              });
            }, icon: Icon(
              _colorchange3?
              Icons.favorite_rounded:Icons.favorite_outline_outlined,
              color: _colorchange3? Colors.red:Colors.black
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
            const Spacer(),
             IconButton(onPressed: (){
              setState(() {
                _colorchangebook3=!_colorchangebook3;
              });
            }, icon: Icon(
              _colorchangebook3?
              Icons.bookmark_rounded:Icons.bookmark_outline_outlined,
              color: _colorchangebook3? Color.fromARGB(255, 226, 191, 87):Colors.black
            )),
           
          ],
         )
          ],
             ),
              Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
             IconButton(onPressed: (){
              setState(() {
                _colorchange4=!_colorchange4;
              });
            }, icon: Icon(
              _colorchange4?
              Icons.favorite_rounded:Icons.favorite_outline_outlined,
              color: _colorchange4? Colors.red:Colors.black
            )),
             IconButton(onPressed: (){
             }, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
            const Spacer(),
            IconButton(onPressed: (){
              setState(() {
                _colorchangebook4=!_colorchangebook4;
              });
            }, icon: Icon(
              _colorchangebook4?
              Icons.bookmark_rounded:Icons.bookmark_outline_outlined,
              color: _colorchangebook4? Color.fromARGB(255, 226, 191, 87):Colors.black
            )),
           
          ],
         )
          ],
              ),
      ],
    )
    )




      /* Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.favorite_outline_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
           
          ],
         )
          ],
        )*/

       //list view 
        /*body: ListView(
          children:[
           Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.favorite_outline_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
           
          ],
         )
          ],
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.favorite_outline_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
           
          ],
         )
          ],
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
          child:Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-thsyY7pcpafX5U5CN_fkREa_Bmrvak0sRg&usqp=CAU",
         width: double.infinity,
         height: 200,
         ),
            ),
         Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.favorite_outline_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.comment_outlined,
            )),
             IconButton(onPressed: (){}, icon: const Icon(
              Icons.send,
            )),
           
          ],
         )
          ],
        )
          ]
        ),*/

    );
  }
}