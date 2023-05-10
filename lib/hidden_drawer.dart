import 'package:flutter/material.dart';

import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:portfolio_and_resume/page/about_me.dart';

class HiddenDrawer extends StatefulWidget{
  const HiddenDrawer({Key? key}):super(key: key);
  @override
  State<HiddenDrawer> createState()=>_HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer>{
  List<ScreenHiddenDrawer>_pages= [];

  final unSelectStyle = TextStyle(color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 18);
  final selectedStyle = TextStyle(color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About Me',
          baseStyle: selectedStyle,
          selectedStyle:selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),

        ),
        AboutMe(context),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Skills',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        AboutMe(context),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Work Experience',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        AboutMe(context),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Education',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        AboutMe(context),
      )

    ];

  }
  @override
  Widget build(BuildContext context){


    return

      HiddenDrawerMenu(
        backgroundColorMenu: Color(0xFF05BFDB),
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 60,
      );

  }
}