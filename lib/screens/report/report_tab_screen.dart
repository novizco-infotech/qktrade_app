import 'package:flutter/material.dart';

import '../drawer.dart';

class ReportTabScreen extends StatefulWidget {
  const ReportTabScreen({super.key});
  static const routeName = 'report_tab';

  @override
  State<ReportTabScreen> createState() => _ReportTabScreenState();
}

class _ReportTabScreenState extends State<ReportTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Reports to come here'),
      ),
    );
  }
}
