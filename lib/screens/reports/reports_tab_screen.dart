import 'package:flutter/material.dart';

class ReportsTabScreen extends StatefulWidget {
  const ReportsTabScreen({super.key});

  @override
  State<ReportsTabScreen> createState() => _ReportsTabScreenState();
}

class _ReportsTabScreenState extends State<ReportsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: const Center(
        child: Text('Reports to come here'),
      ),
    );
  }
}
