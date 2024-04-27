import 'package:flutter/material.dart';
import 'package:islami/hadeth%20tab/hadeth.dart';
import 'package:islami/hadeth%20tab/hadeth_content.dart';

class ItemHadethName extends StatelessWidget {
  final Hadeth hadethArgs;
  ItemHadethName({super.key, required this.hadethArgs});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethContentView.routeName,
        arguments: Hadeth(content: hadethArgs.content ,title: hadethArgs.title));
      },
      child: Text(hadethArgs.title,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,),
    );
  }
}
