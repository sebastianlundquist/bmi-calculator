import 'package:flutter/material.dart';

const double margin = 12.0;
const double borderRadius = 8.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.child, this.onTapped});

  final Color color;
  final Widget child;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapped,
        child: Container(
          margin: EdgeInsets.all(margin),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: child,
        ),
      ),
    );
  }
}
