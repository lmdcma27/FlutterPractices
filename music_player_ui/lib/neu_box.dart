import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(
                  5,
                  5,
                )),
            const BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(
                  -5,
                  -5,
                ))
          ]),
    );
  }
}
