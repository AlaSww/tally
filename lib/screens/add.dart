import 'package:flutter/material.dart';
import 'package:tally/tools.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue; 
    double screenwidth = MediaQuery.sizeOf(context).width;
    double screenheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(backgroundColor: bgcolor,),
      body: Center(
        child: Column(
          children: [
            Text(
              "New Task",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenwidth*0.095,
              ),
            ),
            SizedBox(height: screenheight*0.04,),
            

            Text(
              "Task Name",
              style: TextStyle(
                fontSize: screenwidth*0.07
              ),
            ),

            SizedBox(height: screenheight*0.03,),


            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 224, 235),
                borderRadius: BorderRadius.circular(15)
              ),
              width: screenwidth*0.9,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
            ),


            SizedBox(height: screenheight*0.04,),


            Text(
              "Priority",
              style: TextStyle(
                fontSize: screenwidth*0.07
              ),
            ),

            SizedBox(height: screenheight*0.03,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: screenheight*0.08,
                    width: screenwidth*0.25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(127, 76, 175, 40),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Low",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 49, 113, 52),
                            fontSize: screenwidth*0.05,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "10 pts",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 49, 113, 52),
                            fontSize: screenwidth*0.04,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: screenheight*0.08,
                    width: screenwidth*0.25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(127, 219, 180, 40),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Medium",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 185, 148, 16),
                            fontSize: screenwidth*0.05,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "30 pts",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 185, 148, 16),
                            fontSize: screenwidth*0.04,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: screenheight*0.08,
                    width: screenwidth*0.25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(127, 255, 0, 0),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Heigh",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 154, 0, 0),
                            fontSize: screenwidth*0.05,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "50 pts",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 154, 0, 0),
                            fontSize: screenwidth*0.04,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            

            SizedBox(height: screenheight*0.04,),


            Text(
              "Date",
              style: TextStyle(
                fontSize: screenwidth*0.07
              ),
            ),


            SizedBox(height: screenheight*0.03,),


            Container(
              width: screenwidth*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 208, 224, 235),
              ),
              child: DropdownButton<String>(
                value: selectedValue,
                hint: Text("Select an option"),
                items: ["Today", "Tomorrow"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
            SizedBox(height: screenheight*0.08,),
            Container(
              width: screenwidth*0.5,
              height: screenheight*0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 0, 106, 255),
              ),
              child: Center(
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}