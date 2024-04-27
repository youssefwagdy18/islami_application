import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
var playRadio =Icons.play_circle;

var playCount =1;

onPlayTab(){
  playCount++;
  if(playCount %2 ==0){
    playRadio = Icons.stop_circle;
  }else{
    playRadio =Icons.play_circle;
  }
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
  var provider =Provider.of<AppConfigProvider>(context);
    return  Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.2,
        ),
        Image.asset('assets/images/radio_image.png'),
        InkWell(
          onTap: onPlayTab,
            child: Icon(playRadio,size: MediaQuery.of(context).size.height*0.15,color: provider.appTheme ==ThemeMode.light?
              MyTheme.blackColor : MyTheme.primaryLightColor,))
      ],
    );
  }
}
