import 'package:clip_ex01/constants.dart';
import 'package:flutter/material.dart';

class ClipOvalEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: ClipOval(
                  child: Image.network(
                    dogImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: ClipOval(
                  child: Image(
                    image: NetworkImage(dogImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(border: Border.all()),
                child: ClipOval(
                  child: Image(
                    image: NetworkImage(dogImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(border: Border.all()),
                child: ClipOval(
                  child: Image(
                    image: NetworkImage(dogImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
