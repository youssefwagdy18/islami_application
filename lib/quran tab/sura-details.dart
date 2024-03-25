import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  String content;
  int index;
  SuraDetails({super.key, required this.content,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(content ,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.right,);
  }
}