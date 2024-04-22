import 'package:expence_maneger/fifthpage.dart';
import 'package:expence_maneger/thirdpage.dart';
import 'package:expence_maneger/trash.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PiChartPage extends StatefulWidget {
  const PiChartPage({super.key});

  @override
  State createState() => _PichartpageState();
}

class _PichartpageState extends State{

  Map<String,double> pidata = {
    "Medicine":500,
    "Food":650,
    "Shopping":500,
    "Fuel":650,
    "Entertainment":500,
  };

  List amount=[
    "500","650","325","600","475"
  ];
  
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
 int selectedDrawerButtonIndex=2;

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.menu),
        title: const Text("Graph",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
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
                    builder: (context) => const MythirdExpence(),
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
            padding: const EdgeInsets.all(40),
            child: Center(
              child: Column(
                children: [
                  PieChart(
                    dataMap:pidata,
                    animationDuration:const Duration(milliseconds: 2000),
                    chartRadius: 150,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 25,
                    centerWidget:const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        Text("Rs.2556",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                        ),
                        )
                      ],
                    ),
                    chartValuesOptions:const ChartValuesOptions(
                      showChartValues: false,
                    ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        itemCount: imagelist.length,
                        itemBuilder: (context,index){
                            return Container(
                              padding: const EdgeInsets.all(5),
                              margin:const EdgeInsets.only(
                                top: 15,
                                bottom: 15
                              ),
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(imagelist[index]),
                                  ),
                                  Text(catagryname[index],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight:FontWeight.w400,
                                  ),
                                  ),
                                  const Spacer(),
                                  const Text("Rs."),
                                  Text(amount[index],
                                  style:const TextStyle(
                                    fontSize: 15,
                                    fontWeight:FontWeight.w400,
                                  ),
                                  )
                                ],
                              ),
                            );
                      }),
                    ),
                     const Spacer(),
                         const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Total",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight:FontWeight.w400,
                                 ),
                                ),
                                Text("Rs.2550",
                                  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight:FontWeight.w400,
                            ),
                          )
                       ],
                  ),
                 const SizedBox(
                    height: 30,
                  )
               ],
             ),
            ),
          ),
    );
  }
} 