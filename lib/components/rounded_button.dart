import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function function;

  RoundedButton({
    @required this.text,
    @required this.color,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: function,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}