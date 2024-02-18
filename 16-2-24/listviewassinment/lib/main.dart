import "package:flutter/material.dart";

void main() {
  runApp(const ListViewPractice());
}

class ListViewPractice extends StatelessWidget {
  const ListViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Cricket player",
      home: CricketPlayer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CricketPlayer extends StatefulWidget {
  const CricketPlayer({super.key});
  State createState() => _CricketPlayerState();
}

class _CricketPlayerState extends State {
  List allFormates = [
    "https://imageresizer.static9.net.au/TDgnWy01Seksd9STLQFbrlgq1xQ=/1200x675/https%3A%2F%2Fprod.static9.net.au%2Ffs%2F0cc393ef-d76e-447b-9171-74860e4e3561",
    "https://static.toiimg.com/thumb/msid-105380773,width-1280,height-720,resizemode-4/105380773.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1J0GtuPjusngZDxdkAZjOo-7wdwaOiI7qPMHkYX5r2wyU1wRnG3eEFAa_RARl4b8HgCo&usqp=CAU",
    "https://imageresizer.static9.net.au/TDgnWy01Seksd9STLQFbrlgq1xQ=/1200x675/https%3A%2F%2Fprod.static9.net.au%2Ffs%2F0cc393ef-d76e-447b-9171-74860e4e3561",
    "https://static.toiimg.com/thumb/msid-105380773,width-1280,height-720,resizemode-4/105380773.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1J0GtuPjusngZDxdkAZjOo-7wdwaOiI7qPMHkYX5r2wyU1wRnG3eEFAa_RARl4b8HgCo&usqp=CAU",
    "https://imageresizer.static9.net.au/TDgnWy01Seksd9STLQFbrlgq1xQ=/1200x675/https%3A%2F%2Fprod.static9.net.au%2Ffs%2F0cc393ef-d76e-447b-9171-74860e4e3561",
    "https://static.toiimg.com/thumb/msid-105380773,width-1280,height-720,resizemode-4/105380773.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1J0GtuPjusngZDxdkAZjOo-7wdwaOiI7qPMHkYX5r2wyU1wRnG3eEFAa_RARl4b8HgCo&usqp=CAU"
  ];

  List formatName = ["T20", "oneDAy", "Text"];
  int formate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cricket player"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade300,
        ),
        body: ListView.separated(
            itemCount: allFormates.length,
            itemBuilder: (context, index) {
              return Column(children: [
                ((index + 1) % 3 == 1)
                    ? SizedBox(
                        child: Text(
                          formatName[formate++],
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    : SizedBox(),
                Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 200,
                    child: Image.network(
                      allFormates[index],
                    ))
              ]);
            },
            separatorBuilder: (context, index) {
              return ((index + 1) % 3 == 0)
                  ? Column(children: [
                      Container(
                        height: 10,
                        //width: 100,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 10,
                        // width: 100,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                    
                        color: Colors.green,
                      ),
                    ])
                  : SizedBox();
            }));
  }
}