import 'package:flutter/material.dart';
//import 'custom_widget.dart';
import 'package:matrix_input/matrix_input.dart';

void main() {
  runApp(Matrix());
}

class Matrix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrix Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MatrixTest(title: 'Matrix Test'),
    );
  }
}

class MatrixTest extends StatefulWidget {
  MatrixTest({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MatrixTestState createState() => _MatrixTestState();
}

class _MatrixTestState extends State<MatrixTest> {
  TextEditingController r0c0;
  TextEditingController r0c1;
  TextEditingController r0c2;

  @override
  void initState() {
    r0c0 = TextEditingController(text: '8');
    r0c1 = TextEditingController(text: '9');
    r0c2 = TextEditingController(text: "10");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MatrixInput(
              matrixBorderColor: Colors.red,
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController: r0c0,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            MatrixInput(
              matrixBorderColor: Colors.yellow,
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController: r0c1,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            MatrixInput(
              //matrixBorderColor takes default color - black
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController: r0c2,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
