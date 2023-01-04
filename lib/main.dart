// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Questions_Options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuesAndOptions(),
      theme: ThemeData.dark(),
    );
  }
}

class QuesAndOptions extends StatefulWidget {
  const QuesAndOptions({Key? key}) : super(key: key);

  @override
  State<QuesAndOptions> createState() => _QuesAndOptionsState();
}

int i = 0;
Data obj = Data();
List<QuestionsOptions> data = obj.data;
bool check(int i) {
  if (i == -1) {
    return false;
  }
  return true;
}

class _QuesAndOptionsState extends State<QuesAndOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                //Question
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      data[i].ques,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
              Expanded(
                //Option 1
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        i = data[i].op1;
                        if (i == -1) {
                          i = 0;
                        }
                      });
                    },
                    child: Text(
                      data[i].opt1,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                //Option 2
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Visibility(
                    visible: check(data[i].op2),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          i = data[i].op2;
                        });
                      },
                      child: Text(
                        data[i].opt2,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
