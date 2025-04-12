import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tally/screens/add.dart';
import 'package:tally/tools.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;
    double screenheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: Text(
            "9999 pts",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
        actions: [
          IconButton.filled(
            color: Colors.black,
            onPressed: (){}, 
            icon: Icon(Icons.person_4)
            )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: screenheight*0.05,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenheight*0.04,),
            Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: screenheight*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));},
                  child: Container(
                    width: screenwidth*0.45,
                    height: screenwidth*0.13,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 106, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "+ New Task",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print("hello"),
                  child: Container(
                    width: screenwidth*0.45,
                    height: screenwidth*0.13,
                    decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 110, 110, 110),
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Get Reward",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: screenheight*0.04,),
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft, 
                    padding: EdgeInsets.only(left: screenwidth*0.015),
                    child: Text(
                      "Today's Tasks",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            height: screenheight*0.065,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: (){}, 
                                      icon: Icon(Icons.check_box_outline_blank)
                                      ),
                                    Text(
                                      "Task $index",
                                      style: TextStyle(
                                        fontSize: 18
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Container(
                                      width: screenwidth*0.1,
                                      height: screenheight*0.03,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(5),
                                        color: const Color.fromARGB(156, 244, 67, 54)
                                      ),
                                      child: Center(child: Text("high")),
                                    ),
                                    IconButton(
                                      onPressed:(){} , 
                                      icon: Icon(Icons.settings)
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}