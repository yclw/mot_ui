import 'package:flutter/material.dart';
import 'package:kmot/components/chart.dart';
import 'package:kmot/components/header.dart';
import 'package:kmot/components/side_menu.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../components/data_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: SideMenu()), // 1/6
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Header(),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: DataList(),
                        ),
                        SizedBox(width: 16),
                        Expanded(flex: 4, child: Chart()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ), // 5/6
        ],
      ),
    );
  }
}


