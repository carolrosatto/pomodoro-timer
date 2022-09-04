import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  final VoidCallback? onClick;
  final IconData icon;
  final String text;

  const StopwatchButton({
    Key? key,
    this.onClick,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[900],
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            textStyle: TextStyle(fontSize: 25),
          ),
          onPressed: onClick,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(icon, size: 30),
              ),
              Text(text),
            ],
          )),
    );
  }
}
