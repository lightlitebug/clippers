import 'package:clip_ex01/constants.dart';
import 'package:flutter/material.dart';

class ClipPathEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipPath'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: DiagonalClipper(
                    direction: 'topRight-bottomLeft',
                  ),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: Image.network(
                      dogImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50.0,
                  left: MediaQuery.of(context).size.width * 3 / 4 - 50,
                  child: ClipOval(
                    child: Image.network(userImageUrl,
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: DiagonalClipper(direction: 'topLeft-bottomRight'),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: Image.network(
                      dogImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50.0,
                  left: MediaQuery.of(context).size.width * 1 / 4 - 50,
                  child: ClipOval(
                    child: Image.network(userImageUrl,
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: TriangularClipper(),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: Image.network(
                      dogImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: ClipOval(
                    child: Image.network(userImageUrl,
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CurvedClipper(),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: Image.network(
                      dogImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: ClipOval(
                    child: Image.network(userImageUrl,
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: WavedClipper(),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: Image.network(
                      dogImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: ClipOval(
                    child: Image.network(userImageUrl,
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  final String direction;
  DiagonalClipper({this.direction});

  @override
  Path getClip(Size size) {
    final Path path = Path();
    if (direction == 'topRight-bottomLeft') {
      path.lineTo(size.width, 0);
      path.lineTo(0, size.height);
      path.close();
      return path;
    } else {
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.close();
      return path;
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TriangularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0, size.height * 4 / 5);
    Offset curvePoint = Offset(size.width / 2.0, size.height);
    Offset endPoint = Offset(size.width, size.height * 4 / 5);

    path.quadraticBezierTo(
      curvePoint.dx,
      curvePoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WavedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0, size.height * 4 / 5);
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, 4 * size.height / 5);

    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint.dx,
      centerPoint.dy,
    );

    Offset curvePoint2 = Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset endPoint = Offset(size.width, 4 * size.height / 5);

    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
