import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/wrapper/brightness_wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterShow Base Components'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalMargin16,
                Arrow(),
                verticalMargin8,
                CurvyArrow(100, 100),
                GradientText(
                  "GradientText",
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                  style: TextStyle(fontSize: 100),
                ),
                BrightnessWrapper(
                  lightThemeChild: Text("LightMode"),
                  darkThemeChild: Text("DarkMode"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
