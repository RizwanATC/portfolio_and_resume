import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:portfolio_and_resume/page/about_me.dart';
import 'package:portfolio_and_resume/page/skills.dart';

import 'page/work_exp.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final unSelectStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  final selectedStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About Me',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        AboutMe(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Skills',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        Skills(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Work Experience',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        WorkExp(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Education',
          baseStyle: selectedStyle,
          selectedStyle: selectedStyle,
          colorLineSelected: Color(0xFFCAF9F7),
        ),
        AboutMe(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HiddenDrawerMenu(
        backgroundColorMenu: Color(0xFF05BFDB),
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 60,
        isTitleCentered: true,

      ),
    );
  }
}
