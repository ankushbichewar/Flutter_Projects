import 'package:expence_maneger/thirdpage.dart';
import 'package:flutter/material.dart';

class MysecondExpence extends StatefulWidget {
  const MysecondExpence({super.key,});
  @override
  State createState() => _MysecondxpenceState();
}


class _MysecondxpenceState extends State {
 
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
          top: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Image.asset("assets/pocket.png",
                ),
              ],
            ),
            Form(
              child: Column(
                children: [ 
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text("Create your Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.w500
                    ),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),

                     Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8)
                            ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              offset: Offset(0,3)
                            )
                          ]
                        ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "  Name",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    
                     Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8)
                            ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              offset: Offset(0,3)
                            )
                          ]
                        ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "  Username",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                     const SizedBox(
                      height: 17,
                    ),

                    
                     Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8)
                            ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              offset: Offset(0,3)
                            )
                          ]
                        ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "  Password",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                     const SizedBox(
                      height: 17,
                    ),

                     Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8)
                            ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              offset: Offset(0,3)
                            )
                          ]
                        ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: " Comform Password",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                     const SizedBox(
                      height: 17,
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const MythirdExpence())
                            );
                      },
                     child: Container(
                                   alignment: Alignment.center,
                                   width: 330,
                                   height: 50,
                                   decoration:const BoxDecoration( 
                                     borderRadius: BorderRadius.all(
                                       Radius.circular(8)
                                       ),
                     color:  Color.fromRGBO(14, 161, 125, 1),
                                   ),
                                   child:
                                    const Text("Sign up",
                                    style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15,
                                    ),
                                    ),
                                 ),
                   )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
             ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text("Already have an account? ",
               style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
               ),
               ),
               Text("Sign In",
               style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(14, 161, 125, 1),
               ),
               )
              ],
            )
           
          ],
        ),
        ),
    );
  }
}