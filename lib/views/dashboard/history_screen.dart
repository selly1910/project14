import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HistoryPage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("History")],
      ),
    );
  }
}
