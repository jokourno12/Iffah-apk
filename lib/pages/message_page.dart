import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Page'),
      ),
      body: Center(
        child: Text(
          'This is the Message Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
