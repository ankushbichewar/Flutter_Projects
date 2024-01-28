import 'package:flutter/material.dart';

class Assinment1 extends StatefulWidget{

  const Assinment1({super.key});

  @override
  State<Assinment1> createState()=>_Assignment1State();
}

  class _Assignment1State extends State<Assinment1>{

  int? _count=0;

  List num=[123,145,789,111,654, 1634,676];
  void Palendrom(){
    setState(() {
      _count=0;
      for(int i=0;i<num.length;i++){
        int ret=0;
        int rem=0;
        int orignal=num[i];
       
      int data=num[i];
       while(data!=0){
  
        rem=data%10;
        ret=ret*10+rem;
        data=data~/10;
        
       }
       if(orignal==ret){
         _count=_count!+1;
         
       }
    }
    });
  }
  int _count1=0;
  void amstong(){
    setState(() {
      _count1=0;
      for(int i=0;i<num.length;i++){
         int ret=0;
        int rem=0;
        int nocount=0;
        int orignal=num[i];
       
      int data=num[i];
      while(data!=0){
        nocount++;
        data=data~/10;
      }
      data=num[i];
       while(data!=0){
         int temp=1;
        rem=data%10;
        for(int j=0;j<nocount;j++){
          temp=temp*rem;
        }
        ret=ret+temp;
        data=data~/10;
       }
       if(orignal==ret){
        _count1=_count1!+1;

       }

      }
    });
  }
  //Strong Number
  int _count2=0;
  void strong(){
    setState(() {
      _count2=0;
      for(int i=0;i<num.length;i++){
        int ret=0;
        int rem=0;
        int orignal=0;
        int fact=1;
        
        int data=num[i];
        while(data!=0){
           rem=data%10;
           fact=fact*rem;
           data=data~/10;
        }
        if(orignal==fact){
          _count2=_count2!+1;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body: Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const Text("Palendrom Number count",),
          const SizedBox(
            height: 20,
          ),
          Text("$_count"),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: Palendrom, child: const Text("Print")),
          const SizedBox(height: 20,),

          const Text("Amstrong Number count",),
          const SizedBox(
            height: 20,
          ),
          Text("$_count1"),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: amstong, child: const Text("Print")),

          const SizedBox(height: 20,),

          const Text("Strong Number count",),
          const SizedBox(
            height: 20,
          ),
          Text("$_count2"),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: strong, child: const Text("Print")),
        ],) 
        ),
    )
    );
  }
}
