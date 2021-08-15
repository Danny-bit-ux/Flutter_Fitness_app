import 'package:flutter/material.dart';

import '../constants.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavBar(
            icon: Icon(Icons.calendar_today),
            text: 'Today',
            press: () {},
          ),
          BottomNavBar(
            icon: Icon(Icons.account_balance),
            text: 'All Excrecises',
            press: () {},
            isActive: true,
          ),
          BottomNavBar(
            icon: Icon(Icons.settings),
            text: 'Settings',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function press;
  final bool isActive;
  const BottomNavBar({
    Key key,
    this.text,
    this.icon,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          icon,
          Text(
            text,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
