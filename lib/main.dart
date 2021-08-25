import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex++;
    });
    print("answer chosen!");
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "Whats your favorite animal?",
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: () => {
              print("Answer 2 Chosen!"),
            },
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
