import 'package:expence_maneger/firstpage.dart';
import 'package:expence_maneger/ghraphpage.dart';
import 'package:expence_maneger/trash.dart';
import 'package:flutter/material.dart';



class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State createState() => _CategoryPageState();
}

class _CategoryPageState extends State {

   List imagelist=[
  "assets/medicine.png",
  "assets/food.png",
  "assets/shopping.png",
  "assets/fuel.png",
 // "assets/ente.png"
  ];

  List catagryname=[
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
   // "Entertainment"
  ];

  int selectedDrawerButtonIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: Drawer(
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMyBottomShett();
        },
        shape: const StadiumBorder(),
        label: const Row(
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: Color.fromRGBO(14, 161, 125, 1),
              size: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Add Categorie",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 23,
            mainAxisSpacing: 23,
          ),
          itemCount: catagryname.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: ()async{
                getdialog();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 8,
                      spreadRadius: 0,
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset: Offset(10, 10),
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 74,
                      width: 74,
                      child: Image.asset(
                        imagelist[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                      catagryname[index],
                      style:const TextStyle(
                        color: Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void getdialog() async{
     await showDialog(context: context,
      builder:( (context) {
         return AlertDialog(
         title: const Text("Delete Category",
         textAlign: TextAlign.center
         ,
         style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
         ),
         ),
         content:const Text("Are you sure you want to delete the selected category?",
         textAlign: TextAlign.center,
         style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
         ),
         ),
         actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          },
          style:const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(14, 161, 125, 1)),
          ),
           child: const Text("Delete",
            style: TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.w500,
            ),
           )
           ),
           const SizedBox(width: 30,),
           ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
           },
           child:const  Text("Cancel",
            style: TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.w500,
            ),
           )
           )
         ],
      );
     }));
  }

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

  void showMyBottomShett() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(134, 142, 142, 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    child: Image.asset(
                      "assets/image.png",
                      height: 15,
                      width: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Add",
                  style: TextStyle(fontSize: 16),
                ),
                Form(
                  // key: _taskKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getLabelForTextField(label: "Image URL"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        validator: (value) {
                          return null;
                        },
                        decoration: getInputDecorationForTextField(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      getLabelForTextField(label: "Category"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        validator: (value) {
                          return null;
                        },
                        //controller: titleController,
                        decoration: getInputDecorationForTextField(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getLabelForTextField({required String label}) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(33, 33, 33, 1),
      ),
    );
  }

  InputDecoration getInputDecorationForTextField() {
    return const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(33, 33, 33, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    );
  }
}
