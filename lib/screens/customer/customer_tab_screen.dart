import 'package:flutter/material.dart';
import 'package:qktrade_app/screens/customer/all_customers.dart';
import 'package:qktrade_app/screens/customer/customer_filter.dart';
import 'package:qktrade_app/screens/customer/top_bal_customers.dart';

import '../drawer.dart';

class CustomerTabScreen extends StatefulWidget {
  const CustomerTabScreen({super.key});
  static const routeName = 'customer_tab';

  @override
  State<CustomerTabScreen> createState() => _CustomerTabScreenState();
}

class _CustomerTabScreenState extends State<CustomerTabScreen> {
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const AllCustomers(), 'title': 'All Customers'},
    {'pageName': const TopBalCustomer(), 'title': 'Top Balance Customers'},
    {'pageName': const CustomerFilter(), 'title': 'Customer Filter'},
  ];

  var _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDetails[_selectedPageIndex]['title']),
        actions: [
          IconButton(
            onPressed: () => print('Add pressed'),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      drawer: const MainDrawer(),
      body: _pageDetails[_selectedPageIndex]['pageName'],
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton(
              onPressed: () => print('Bottom Add'),
              tooltip: 'Add Task',
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'All Customers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Top Balance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications), label: 'Filter'),
        ],
      ),
    );
  }
}
