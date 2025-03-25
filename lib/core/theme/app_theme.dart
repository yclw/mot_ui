import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  /// 预定义的亮色主题配置
  /// 
  /// [ThemeData] 参数说明：
  /// - useMaterial3: 启用Material 3设计规范
  /// - colorScheme: 颜色方案配置
  ///   - seedColor: 基准色设置为绿色，用于生成调色板
  ///   - contrastLevel: 颜色对比度级别设为最高（1.0）
  ///   - brightness: 亮度模式设置为亮色主题
  /// - textTheme: 使用Google Fonts的Lateef字体族文本主题
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      contrastLevel: 1.0,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.lateefTextTheme(),
  );
}