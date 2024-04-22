import 'package:expence_maneger/firstpage.dart';
import 'package:expence_maneger/ghraphpage.dart';
import 'package:expence_maneger/trash.dart';
import 'package:flutter/material.dart';
import 'package:expence_maneger/fifthpage.dart';

class MyforthExpence extends StatefulWidget {
  const MyforthExpence({super.key,});
  @override
  State createState() => _MyforthEpenceState();
}


class _MyforthEpenceState extends State {

  void addnewExpence(){
    showModalBottomSheet(
      
      isScrollControlled: true,
      isDismissible: true,
      context:context,
       builder:(newcontext) {
        return Padding(
       padding: EdgeInsets.only(
       left: 20,
        right: 20,
      bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                 const SizedBox(height: 10,),
                const Text("Date",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                     suffixIcon:const Icon(Icons.calendar_month_outlined),
                    labelText: "select date",
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235), 
                        )
                      
                       ) ,
                       hintText: "Date", 
                      
                  ),
                  onTap: () async {
              //  DateTime? pickeddate = await showDatePicker(
              //  context: context,
              //  initialDate: DateTime.now(),
              //  firstDate: DateTime(2024),
              //  lastDate: DateTime(2027),
              //  );
              //  String formatedDate =
              //    DateFormat.yMMMd().format(pickeddate!);
              //       setState(() {
              //       datecontrol.text = formatedDate;
              //          });
                   },
                 ),
                const SizedBox(height: 10,),
                const Text("Amount",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  decoration: InputDecoration(
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235),
                        )
                       ),
                       hintText: "Enter Amount",
                       labelText: "amount",
                  ),
                ),
                 const SizedBox(height: 10,),
                const Text("Category ",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  decoration: InputDecoration(
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235),
                        )
                       ),
                       hintText: "Enter  Category",
                       labelText: "Category"  
                  ),
                ),
                  const SizedBox(height: 10,),
                const Text("Description ",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  decoration: InputDecoration(
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235),
                        )
                       ),
                       hintText: "Enter  Description",
                       labelText: "Description"  
                  ),
                ),
                
                const SizedBox(height: 20,)
              ],
            ),
            Container(
              height: 40,
              width: 123,
              color: Colors.white,
              child: ElevatedButton(  
              onPressed: (){
                Navigator.of(context).pop();
              },
              style:const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll(
                  Color.fromRGBO(14, 161, 125, 1)
                  )
              ),
               child:const Text("ADD",
               style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
               ) ,
               ) 
               ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
        );
      },);
  }


  List imagelist=[
  "assets/medicine.png",
  "assets/food.png",
  "assets/shopping.png",
  "assets/fuel.png",
  "assets/ente.png"
  ];

  List catagryname=[
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
    "Entertainment"
  ];

  List amount=[
    "500","650","325","600","475"
  ];
 
 int selectedDrawerButtonIndex=3;
  Widget getDrawerButtons({
    required IconData icon,
    required String label,
    required int buttonIndex,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: (buttonIndex == selectedDrawerButtonIndex)
            ? const Color.fromRGBO(14, 161, 125, 0.15)
            : null,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: 45,
      width: 186,
      alignment: Alignment.center,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromRGBO(5, 158, 117, 1),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            label,
            style: TextStyle(
              color: (buttonIndex == selectedDrawerButtonIndex)
                  ? const Color.fromRGBO(5, 158, 117, 1)
                  : null,
            ),
          )
        ],
      ),
    );
  }
 
  @override 
  Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar( 
            actions: [
                 const  SizedBox(width: 45,),
                  const Text("June 2022",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  const Spacer(),
                   IconButton(onPressed: (){},
                   icon: const Icon(
                    Icons.search_rounded,
                    color: Color.fromRGBO(33, 33, 33, 1),
                   )
                  ),
                ],
          ),
          floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
           onPressed: (){
            addnewExpence();
           },
           label: Container(
            color: Colors.white,
            child:
            const Row( 
              children: [ 
               Icon(Icons.add_circle,
               size: 32,
               color:Color.fromRGBO(14, 161, 125, 1)
               ),
               Text("Add Transaction ",
               style: TextStyle(
                fontSize: 12
               ),)
              ],
            )
           )),
           drawer:  Drawer(
        width: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Expense Maneger",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "Saves all your Transactions",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            /*ListTile(
                shape: Border.all(),
                selectedColor: Color.fromRGBO(14, 161, 125, 1),
                //hoverColor: Color.fromRGBO(14, 161, 125, 0.15),
                leading: Icon(Icons.calendar_month),
                title: const Text('Transaction'),
                selectedTileColor: Color.fromRGBO(14, 161, 125, 0.15),
                autofocus: true,
                selected: true,
                onTap: () {},
              ),*/

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 1;
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyfirstExpence(),
                  ),
                );

                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.calendar_month,
                label: "Transactions",
                buttonIndex: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 2;
                setState(() {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const PiChartPage())
                            );
                });
              },
              child: getDrawerButtons(
                icon: Icons.pie_chart_rounded,
                label: "Graphs",
                buttonIndex: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 3;
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryPage(),
                  ),
                );
              },
              child: getDrawerButtons(
                icon: Icons.label_rounded,
                label: "Category",
                buttonIndex: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 4;
                setState(() {
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrashPage(),
                  ),
                    );
                });
              },
              child: getDrawerButtons(
                  icon: Icons.delete_rounded, label: "Trash", buttonIndex: 4),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 5;
                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.person_rounded,
                label: "About us",
                buttonIndex: 5,
              ),
            ),
          ],
        ),
      ),
         body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
           child: Column(
            children: [
              
              const SizedBox(
                height: 20,
              ),


              Expanded(
                child:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                  return Container(
                    padding:const EdgeInsets.all(8),
                    height: 74,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                           Image.asset(imagelist[index],
                           height: 41,
                           width: 41,
                           ),
                           const SizedBox(
                            width: 20,
                           ),
                           Column( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 SizedBox(
                                  width:280,
                                   child: Text(catagryname[index],
                                   style: const TextStyle( 
                                    fontSize: 15,
                                   ),
                                   ),
                                 ),
                                 Image.asset("assets/Subtract.png",),
                                 Text(amount[index],
                                 style: const TextStyle( 
                                  fontSize: 15,
                                 ),
                                 ),                                 
                                ],
                              ),
                              const Text("Lorem Ipsum is simply dummy text of the ",
                              style:TextStyle( 
                                  fontSize: 10,
                                 ),
                              ),
                            ],
                           )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             Text("3 June | 11:50 AM",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }) 
              ),

            ],
           ),
         ),
        );
  }
}