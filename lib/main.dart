import 'package:flutter/material.dart';
import 'package:flutter_eg_1/config/router.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eg_1/config/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 沉浸式状态栏
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp.router(
      title: 'Flutter Example 1',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        textTheme: const TextTheme(
          // 标题样式
          headlineLarge: TextStyle(fontSize: headLineLargeFontSize),
          headlineMedium: TextStyle(fontSize: headLineMediumFontSize),
          headlineSmall: TextStyle(fontSize: headLineSmallFontSize),

          // 正文样式
          bodyLarge: TextStyle(fontSize: bodyLargeFontSize),
          bodyMedium: TextStyle(fontSize: bodyMediumFontSize),
          bodySmall: TextStyle(fontSize: bodySmallFontSize),

          // 标签样式
          labelLarge: TextStyle(fontSize: labelLargeFontSize),
          labelMedium: TextStyle(fontSize: labelMediumFontSize),
          labelSmall: TextStyle(fontSize: labelSmallFontSize),

          // title 卡片，对话框标题样式
          titleLarge: TextStyle(fontSize: titleLargeFontSize),
          titleMedium: TextStyle(fontSize: titleMediumFontSize),
          titleSmall: TextStyle(fontSize: titleSmallFontSize),
        ),

        // 按钮样式
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              elevation: 4,
              textStyle: TextStyle(fontSize: buttonFontSize),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
        ),
      ),
      routerConfig: router,
    );
  }
}

