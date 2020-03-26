import 'package:flutter/material.dart';
import 'package:flutter_arkit_example/pages/custom_animation.dart';
import 'package:flutter_arkit_example/pages/face_detection.dart';
import 'package:flutter_arkit_example/pages/simplest_code.dart';
import 'package:flutter_arkit_example/pages/widget_projection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Flutter ARKit Example'),
          ),
          body: TabBarView(
            children: [
              SimplestCodePage(),
              FaceDetectionPage(),
              CustomAnimationPage(),
              WidgetProjectionPage(),
            ],
          ),
        ),
      ),
    );
  }
}
