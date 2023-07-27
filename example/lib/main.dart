import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/cubic_bezier.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/components/widgets/wrapper/brightness_wrapper.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: SingleChildScrollView(
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
                ),
                CodeDisplay(
                  """
// Comment
     class _DartCodeViewerPage extends StatelessWidget {
const _DartCodeViewerPage(this.code);
          final InlineSpan code;

    @override
          Widget build(BuildContext context) {
       final _richTextCode = code;
final _plainTextCode = _richTextCode.toPlainText();
    
        void _showSnackBarOnCopySuccess(dynamic result) {
       ScaffoldMessenger.of(context).showSnackBar(     const SnackBar( content: Text('Copied to Clipboard'),
      ),
           );
  }
    
       void _showSnackBarOnCopyFailure(Object exception) {ScaffoldMessenger.of(context).showSnackBar( SnackBar(
            
            
            
              content: Text('Failure to copy to clipboard: exception'),
  ),
          );
  }
    
  return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      if (DartCodeViewerTheme.of(context).showCopyButton!)
        ElevatedButton(
          onPressed: () async {
   await Clipboard.setData(ClipboardData(text: _plainTextCode)) .then(_showSnackBarOnCopySuccess)
                .catchError(_showSnackBarOnCopyFailure);
          },
                child: DartCodeViewerTheme.of(context).copyButtonText,
        ),
               Expanded(
          child: SingleChildScrollView(
              child: SelectableText.rich(
    TextSpan(
              text: "",
    children: [_richTextCode],
                style: const TextStyle(fontWeight: FontWeight.bold),
   ),
              textDirection: TextDirection.ltr,
             ))),
            ],
  );
  }
  }
""",
                  width: 700,
                  codeColorTheme: CodeDisplayColorThemes.shadesOfPurple,
                  classTextStyle: TextStyle(color: Colors.yellow),
                  padding: allPadding16,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  showCopyButton: true,
                  copyButtonReplacement: Align(
                    alignment: Alignment.topRight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: CodeDisplayColorThemes.shadesOfPurple.baseColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: allPadding16,
                        child: Text(
                          'Copy',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
