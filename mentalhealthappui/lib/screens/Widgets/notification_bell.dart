import 'package:flutter/material.dart';

class notification_bell extends StatelessWidget {
  const notification_bell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12)),
      child: Icon(
        Icons.notifications,
        color: Colors.white,
      ),
    );
  }
}