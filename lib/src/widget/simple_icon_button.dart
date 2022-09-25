import 'package:flutter/material.dart';

class SimpleIconButton extends StatelessWidget {

  final IconData icon;
  final void Function()? onClick;

  const SimpleIconButton({
    required this.icon,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                icon,
                size: 20,
              ),
            )),
        onTap: onClick,
      ),
    );
  }
}