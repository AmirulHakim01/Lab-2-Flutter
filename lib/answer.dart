import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const ({Key? key}) :siper(key: key);
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text('Answer 1'),
          onPressed: selectHandler,
        ));
  }
}
