import 'package:flutter/material.dart';

class Educationapp extends StatefulWidget{
  const Educationapp({super.key});


@override
State createState()=> _EducationappState();
}

class _EducationappState extends State{

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              right: 20,
              left: 20,
            ),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Icon(Icons.menu,color: Colors.black,),
                    Icon(Icons.notifications_none_outlined,
                    color: Colors.black,)
                  ],
                 ),
                 const SizedBox(height: 20,),
                 const Text("Welcome to New",style: TextStyle(
                  fontSize:27,
                  fontWeight: FontWeight.w300,
                 ),),
                 const Text("Educourse",style: TextStyle(
                  fontSize:37,
                  fontWeight: FontWeight.w600,
                 ),),
                 const SizedBox(
                  height: 30,
                 ),
                 Container(
                   height: 57,
                   width: 320,
                   decoration:const BoxDecoration( 
                     color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30)
                      )
                   ),
                   child:const Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 2,), 
                      Text("Enter your Keyword"
                      ,style: TextStyle( 
                        fontSize: 14,
                        color: Color.fromRGBO(143, 143, 143, 1)
                      ),
                      ),
                      Icon(Icons.search),
                       SizedBox(width: 2,), 
                    ],
                   ),
                 )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Container( 
              decoration: const BoxDecoration( 
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(38),
                  topRight: Radius.circular(38), 
                  )
              ),child:  Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20
                ),
                child:  Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    const Text("Course For You",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView( 
                      scrollDirection: Axis.horizontal,
                      child: Row( 
                        children: [ 
                          Image.asset("assets/card1.png"),
                          const SizedBox(
                            width: 10,
                            ),
                            Image.asset("assets/card2.png")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Course By Catagory",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [ 
                        Column(
                          children: [ 
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration( 
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8)
                                  )
                              ),
                              child: Image.asset("assets/ui.png"),
                            ),
                            const SizedBox(height: 10,),                           
                            const Text("UI/UX",
                           style: TextStyle(
                            fontSize: 14,
                           ),
                           ),
                          ],
                        ),
                         Column(
                          children: [ 
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration( 
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8)
                                  )
                              ),
                              child: Image.asset("assets/visul.png"),
                            ),
                            const SizedBox(height: 10,),    
                             const Text("VISUAL",
                           style: TextStyle(
                            fontSize: 14,
                           ),
                           ),
                          ],
                        ),
                         Column(
                          children: [ 
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration( 
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8)
                                  )
                              ),
                              child: Image.asset("assets/Vector.png"),
                            ),
                            const SizedBox(height: 10,),    
                             const Text("ILLUSTRATION",
                           style: TextStyle(
                            fontSize: 14,
                           ),
                           ),
                          ],
                        ),
                         Column(
                          children: [ 
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration( 
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8)
                                  )
                              ),
                              child: Image.asset("assets/photo.png"),
                            ),
                            const SizedBox(height: 10,),    
                             const Text("PHOTO",
                           style: TextStyle(
                            fontSize: 14,
                           ),
                           ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}