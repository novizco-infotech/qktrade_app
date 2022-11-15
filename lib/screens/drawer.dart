import 'package:flutter/material.dart';
import 'package:qktrade_app/screens/customer/customer_tab_screen.dart';
import 'package:qktrade_app/screens/report/report_tab_screen.dart';
import '../blocs/bloc_exports.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            color: Colors.grey,
            child: Text(
              'Drawer',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacementNamed(
              CustomerTabScreen.routeName,
            ),
            child: const ListTile(
              leading: Icon(Icons.folder_special),
              title: Text('Customers'),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacementNamed(
              ReportTabScreen.routeName,
            ),
            child: const ListTile(
              leading: Icon(Icons.folder_special),
              title: Text('Reports'),
            ),
          ),
          const Divider(),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Switch(
                value: state.themeValue,
                onChanged: (newValue) {
                  newValue
                      ? context.read<ThemeBloc>().add(ThemeLightEvent())
                      : context.read<ThemeBloc>().add(ThemeDarkEvent());
                },
              );
            },
          )
        ]),
      ),
    );
  }
}
