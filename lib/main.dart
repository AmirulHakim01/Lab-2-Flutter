import 'package:flutter/material.dart';
import 'package:project1/answer.dart';

import 'package:project1/question.dart';
import 'package:project1/button.dart';
import 'package:project1/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  void answerQuestion() {
    print('Answer chosen !');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color ?',
      'What is your favourite animal ?',
    ];

    var currTrans = Transaction(id: 'K2', amount: 20.00);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Question('What\'s your favourite color ?'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            Question('What\s your favourite Animal ?'),
            ElevatedButton(
                onPressed: () => print('Answer 2 chosen'),
                child: Text('Answer 2')),
          ],
        ),
      ),
    );
  }
}
