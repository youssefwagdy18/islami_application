import 'package:flutter/material.dart';
import 'package:islami/quran%20tab/sura_content.dart';

class ItemSuraName extends StatelessWidget {
String name;
int index;
ItemSuraName({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraContent.routename,
        arguments: SuraDetailsArgs(
          name: name,
          index: index
        ));
      },
      child: Text(name,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,),
    );
  }
}
