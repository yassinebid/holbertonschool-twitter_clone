import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  void Function()? onPressed;
  CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        '${label}',
        style: const TextStyle(
          fontFamily: "Raleway",
          fontSize: 30.0,
          height: 1.0,
        ),
      ),
    );
  }
}
