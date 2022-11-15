import 'package:flutter/material.dart';

import '../drawer.dart';

class CustomerTabScreen extends StatefulWidget {
  const CustomerTabScreen({super.key});
  static const routeName = 'customer_tab';

  @override
  State<CustomerTabScreen> createState() => _CustomerTabScreenState();
}

class _CustomerTabScreenState extends State<CustomerTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customers'),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Customer Tab Screen'),
      ),
    );
  }
}
