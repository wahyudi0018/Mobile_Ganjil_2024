import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0), // Reduced padding
      color: Colors.blueGrey[50],
      child: Text(
        'Wahyudi - 2241720018',
        style: TextStyle(fontSize: 12, color: Colors.grey), // Smaller font size
        textAlign: TextAlign.center,
      ),
    );
  }
}
