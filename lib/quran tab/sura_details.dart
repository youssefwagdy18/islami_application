import 'package:flutter/material.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class SuraDetails extends StatelessWidget {
  final String content;
  final int index;
  const SuraDetails({super.key, required this.content,required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(content ,
      style:Theme.of(context).textTheme.titleMedium!.copyWith(color:
      provider.appTheme == ThemeMode.light?
      MyTheme.blackColor:
      MyTheme.yellowColor));
  }
}