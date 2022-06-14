import 'package:flutter/material.dart';

class Notifiction extends StatelessWidget {
  const Notifiction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text('Notificattion'),
      ),
    );
  }
}
