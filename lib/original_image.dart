import 'package:clip_ex01/constants.dart';
import 'package:flutter/material.dart';

class OriginalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Original Image'),
      ),
      body: Center(
        child: Image.network(dogImageUrl),
      ),
    );
  }
}
