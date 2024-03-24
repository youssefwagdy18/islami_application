import 'package:flutter/material.dart';
import 'package:islami/hadeth%20tab/hadeth.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran%20tab/quran.dart';
import 'package:islami/radio%20tab/radio.dart';
import 'package:islami/sebha%20tab/sebha.dart';

class HomeScreen extends StatefulWidget{
  static const String routename ='HomeScreen';

   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',
            style: Theme.of(context).textTheme.titleLarge),
          ),
        bottomNavigationBar:Theme(
          data: ThemeData(
            canvasColor: MyTheme.primaryLightColor
            ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/images/quran.png'),
              label: 'Quran'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/sebha_icon.png'),
                  label: 'Sebha'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/radio.png'),
                  label: 'Radio'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/quran-quran-svgrepo-com.png'),
                  label: 'Hadeth'),
            ],
            currentIndex:selectedIndex ,
            onTap: (index){
              selectedIndex = index;
              setState(() {
              });
            },
          ),
        ),
          body: tabs[selectedIndex])
      ],
    );
  }
  List<Widget>tabs =[
    QuranTab(),SebhaTab(),RadioTab(),HadethTab()
  ];
}