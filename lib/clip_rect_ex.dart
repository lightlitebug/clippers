import 'package:clip_ex01/constants.dart';
import 'package:flutter/material.dart';

class ClipRectEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRect'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.5,
                child: Image.network(
                  dogImageUrl,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ClipRect(
              clipper: MyClipper(),
              child: Image.network(
                dogImageUrl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromLTRB(
      100,
      150,
      size.width - 100,
      size.height - 150,
    );
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
