// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentalhealthappui/screens/Widgets/emotion_face.dart';

import 'Widgets/notification_bell.dart';
import 'Widgets/searchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static const channel = MethodChannel("unique_name");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          )
        ],
      ),
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                //greetings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Abhilash!",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "16 Jan 2022",
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),
                    //notification bell
                    notification_bell(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //search bar
                search_bar(),
                const SizedBox(
                  height: 25,
                ),
                // how dp you feel now
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "How do you feel?",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 18,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
// emotions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    EmotionsFace(
                      face: "😭",
                      text: "Sad",
                    ),
                    EmotionsFace(
                      face: "😢",
                      text: "Ok",
                    ),
                    EmotionsFace(
                      face: "😄",
                      text: "Well",
                    ),
                    EmotionsFace(
                      face: "😁",
                      text: "Happy",
                    )
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [],
                      ),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: () {
                            _showToast();
                          },
                          child: Text("Press here to pay"))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showToast() async {
    final int showToast = await channel.invokeMethod(
        "showtoast", <String, String>{"msg": "Woow i can do it anything"});
  }
}
