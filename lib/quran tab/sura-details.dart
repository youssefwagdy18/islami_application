import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  final String content;
  final int index;
  const SuraDetails({super.key, required this.content,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(content ,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.right,);
  }
}