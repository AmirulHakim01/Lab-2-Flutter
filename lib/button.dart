import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  
  
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer Button')),
    );
  }
}