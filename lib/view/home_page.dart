import 'package:flutter/material.dart';
import '/components/chart.dart';
import '/components/header.dart';
import '/components/side_menu.dart';

import '../components/data_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 横向布局容器（左侧菜单栏 + 右侧主内容区）
      body: Row(
        children: [
          // 左侧菜单栏（占1/6横向空间）
          Expanded(flex: 1, child: SideMenu()),

          // 右侧主内容区（占5/6横向空间）
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // 页面顶部标题栏
                  Header(),

                  // 主内容区（数据列表 + 图表）
                  Expanded(
                    child: Row(
                      children: [
                        // 数据列表区域（占5/9内容区宽度）
                        Expanded(flex: 5, child: DataList()),

                        // 数据列表与图表之间的间距
                        SizedBox(width: 16),

                        // 图表展示区域（占4/9内容区宽度）
                        Expanded(flex: 4, child: Chart()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
