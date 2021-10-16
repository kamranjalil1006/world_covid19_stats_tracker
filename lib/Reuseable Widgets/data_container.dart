import 'package:covid_19_tracker/components/constants.dart';
import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final Color color;
  final String title;
  final String count;
  DataContainer(
      {required this.color, required this.title, required this.count});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, color],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            border: Border.all(color: color, width: 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        width: 150,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: kTitleStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              count.toString(),
              style: kCountStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
