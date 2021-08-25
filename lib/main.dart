import 'package:flutter/material.dart';
import './question.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
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
          Question( questions[_questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: () => {
              print("Answer 2 Chosen!"),
            },
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
