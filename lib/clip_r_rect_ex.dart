import 'package:clip_ex01/constants.dart';
import 'package:flutter/material.dart';

class ClipRRectEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0),
                  ),
                  child: Image(
                    image: NetworkImage(
                      dogImageUrl,
                    ),
                    fit: BoxFit.cover,
                    height: 350,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: MediaQuery.of(context).size.width / 2.0 - 50.0,
            child: ClipOval(
              child: Image.network(
                userImageUrl,
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
