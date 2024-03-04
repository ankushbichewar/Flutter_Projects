import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
            Image.network("https://i.pinimg.com/564x/4b/1c/67/4b1c6722f00a055adec8233d95303f77.jpg",
            
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
                     child: Image.network("https://i.pinimg.com/564x/10/1a/d3/101ad39ea659801709f3795b9f545a09.jpg",
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
                       validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Please Enter Password";
                        }else{
                          return null;
                        }
                      },
                      controller: _password,
                      decoration:const InputDecoration(
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
                          backgroundColor: MaterialStatePropertyAll( Color.fromRGBO(6, 127, 193, 1),),
                          foregroundColor: MaterialStatePropertyAll(Colors.black),
                        
                        ),
                        onPressed: (){
                          bool loginValidated = _fromkey.currentState!.validate();
                            if (loginValidated) {
                                 ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(
                                    content: Text("Login Successful"),
                                      ),
                                     );
                                       } else {
                                 ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                   content: Text("Login Failed"),
                                   backgroundColor: Colors.white,
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
