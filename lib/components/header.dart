import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // 从主题获取文本样式和颜色配置
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context);

    return Row(
      children: [
        // 左侧导航菜单按钮
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu, color: colorTheme.primaryColor),
        ),
        SizedBox(width: 16),

        // 主标题文本
        Text('Monitor', style: textTheme.displayMedium),
        Spacer(),

        // 搜索输入框（占横向空间的3/5）
        Expanded(
          flex: 3,
          child: TextField(
            style: textTheme.bodyLarge,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: IconButton(
                // 搜索图标按钮
                onPressed: () => {},
                icon: Icon(Icons.search, color: colorTheme.primaryColor),
              ),
              hintText: 'Search',
              hintStyle: textTheme.bodyLarge,
              border: OutlineInputBorder(
                // 无边框圆角样式
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),

        // 右侧功能按钮组
        IconButton(
          // 数据统计按钮
          onPressed: () => {},
          icon: Icon(Icons.bar_chart, color: colorTheme.primaryColor),
        ),
        IconButton(
          // 全屏视图按钮
          onPressed: () => {},
          icon: Icon(Icons.zoom_in_map, color: colorTheme.primaryColor),
        ),
      ],
    );
  }
}
