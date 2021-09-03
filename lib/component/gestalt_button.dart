import 'package:flutter/material.dart';

class GestaltButton extends StatelessWidget {

  final Widget child;
  final Function onClick;
  final bool isLoading;

  const GestaltButton({
    Key key,
    this.onClick,
    this.isLoading,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: child
    );
  }
}