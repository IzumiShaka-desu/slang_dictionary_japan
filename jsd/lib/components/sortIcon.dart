import 'package:flutter/material.dart';

class SortAsc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [Text('A'), Text('Z')]),
        Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
          '↓',
          style: TextStyle(fontSize: 24),
        )])
      ],
    ));
  }
}
class SortDsc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Z'), Text('A')]),
        Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
          '↓',
          style: TextStyle(fontSize: 24),
        )])
      ],
    ));
  }
}
