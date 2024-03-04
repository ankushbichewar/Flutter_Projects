
import 'package:flutter/material.dart';
import 'package:todolistmain/todo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final TextEditingController _username=TextEditingController();
final TextEditingController _password=TextEditingController();

final GlobalKey<FormState> _fromkey=GlobalKey<FormState>();
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 127, 193, 1),
    
      body: 
      SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/loginpagemain.jpg",
            
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _fromkey,
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    const SizedBox(height: 30,),
                    Container(
                      alignment: Alignment.center,
                      child: const Text("Login",
                      style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ) ,
                      ),
                    ),
                    
                   Container(
                    alignment: Alignment.center,
                     child:
                     Image.asset("assets/onl.jpg",
                     height: 200,
                     width: 200,            
                     ),
                   ),
                    
                    const Text("Username",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                    TextFormField(
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Please Enter username";
                        }else{
                          return null;
                        }
                      },
                      controller: _username,
                      decoration:const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        label: Text("username"),
                        hintText: "Enter user Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(
                            Radius.circular(10)
                            ),
                            borderSide: BorderSide(
                              color:Colors.black ,
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.all(
                            Radius.circular(10)
                            ),
                            borderSide: BorderSide(
                              color:Colors.black ,
                              )
                             ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Text("Password",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                     TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                       validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Please Enter Password";
                        }else{
                          return null;
                        }
                      },
                      controller: _password,
                      decoration:const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        label: Text("password"),
                        
                        hintText:"Enter the password",
                        
                        enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(
                            Radius.circular(10)
                            ),
                            borderSide: BorderSide(
                              color:Colors.black ,
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.all(
                            Radius.circular(10)
                            ),
                            borderSide: BorderSide(
                              color:Colors.black ,
                              )
                             ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        
                        style:const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll( Color.fromRGBO(144, 205, 218, 0.816),),
                          foregroundColor: MaterialStatePropertyAll(Colors.black),
                        
                        ),
                        onPressed: (){
                          bool loginValidated = _fromkey.currentState!.validate();
                            if (loginValidated) {
                                     if(_username.text=="ankush" && _password.text=="12345"){
                                           ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                              content: Text("Login Successful"),
                                      ),
                                     );
                                          Navigator.push(
                                            context,
                                             MaterialPageRoute(builder: (context) => const ToDoApp(),
                                             settings: const RouteSettings(
                                              name: "Login"
                                             )
                                         ),
                                        );
                                     }
                                   else{
                                     ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(
                                              content: Text("Invalied username or password"),
                                      ),
                                     );
                                   }
                                 }
                                  else {
                                 ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                   content: Text("Login Failed"),
                                 ),
                                );
                               }
                              },
                              child:const Text("login",
                              style:TextStyle(
                               fontSize: 20,
                        
                       ) ,
                       )
                       ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}