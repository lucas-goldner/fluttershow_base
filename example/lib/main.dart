import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/cubic_bezier.dart';
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
                CurvyArrow(
                  100,
                  500,
                  strokeWidth: 4.0,
                  cubicBezier: CubicBezier(
                    x1: 0,
                    y1: 40,
                    x2: 0.25,
                    y2: 30,
                    x3: 0.5,
                    y3: -20,
                  ),
                ),
                CurvyArrow(
                  100,
                  300,
                  strokeWidth: 3.0,
                  color: Colors.red,
                  cubicBezier: CubicBezier(
                    x1: 10,
                    y1: -40,
                    x2: 0.5,
                    y2: -30,
                    x3: 0.5,
                    y3: 20,
                  ),
                ),
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
