import 'package:clip_ex01/clip_oval_ex.dart';
import 'package:clip_ex01/clip_path_ex.dart';
import 'package:clip_ex01/clip_r_rect_ex.dart';
import 'package:clip_ex01/clip_rect_ex.dart';
import 'package:clip_ex01/custom_button.dart';
import 'package:clip_ex01/flutter_custom_clippers_ex.dart';
import 'package:clip_ex01/original_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clip Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              buttonTitle: 'Original Image',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OriginalImage();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonTitle: 'ClipOval',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ClipOvalEx();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonTitle: 'ClipRect',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ClipRectEx();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonTitle: 'ClipRRect',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ClipRRectEx();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonTitle: 'ClipPath',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ClipPathEx();
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonTitle: 'FlutterCustomClippers',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FlutterCustomClippersEx();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
