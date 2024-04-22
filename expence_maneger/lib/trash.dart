import 'package:flutter/material.dart';


class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State createState() => _TrashpageState();
}

class _TrashpageState extends State{

  List amount=[
    "500","650","325","600","475"
  ];
  List catagryname=[
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
    "Entertainment"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
        automaticallyImplyLeading: false,
        title: const Text("Trash",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: catagryname.length,
            itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration( 
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 0.1,
                  )
                )
              ),
              //margin:const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/trushim.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(catagryname[index],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      const Spacer(),
                      const Text("Rs."),
                      Text(amount[index],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                        style:  TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                        )),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("3 June | 11:50 AM",
                      style:  TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ),
      
    );
  }
}