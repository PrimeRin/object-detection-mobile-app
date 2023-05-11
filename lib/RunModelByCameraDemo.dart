// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_pytorch/pigeon.dart';
import 'package:object_detection_app/ui_designs/homepage.dart';
import '../ui/box_widget.dart';

import 'ui/camera_view.dart';

/// [RunModelByCameraDemo] stacks [CameraView] and [BoxWidget]s with bottom sheet for stats
class RunModelByCameraDemo extends StatefulWidget {
  @override
  _RunModelByCameraDemoState createState() => _RunModelByCameraDemoState();
}

class _RunModelByCameraDemoState extends State<RunModelByCameraDemo> {
  List<ResultObjectDetection?>? results;
  String? classification;

  /// Scaffold Key
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
        return true;
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            // Camera View
            CameraView(resultsCallback, resultsCallbackClassification),

            // Bounding boxes
            boundingBoxes2(results),
          ],
        ),
      ),
    );
  }


  /// Returns Stack of bounding boxes
  Widget boundingBoxes2(List<ResultObjectDetection?>? results) {
    if (results == null) {
      return Container();
    }
    return Stack(
      children: results.map((e) => BoxWidget(result: e!)).toList(),
    );
  }

  void resultsCallback(List<ResultObjectDetection?> results) {
    setState(() {
      this.results = results;
      results.forEach((element) {
        print({
          "rect": {
            "left": element?.rect.left,
            "top": element?.rect.top,
            "width": element?.rect.width,
            "height": element?.rect.height,
            "right": element?.rect.right,
            "bottom": element?.rect.bottom,
          },
        });
      });
    });
  }

  void resultsCallbackClassification(String classification) {
    setState(() {
      this.classification = classification;
    });
  }

}

/// Row for one Stats field
class StatsRow extends StatelessWidget {
  final String left;
  final String right;

  StatsRow(this.left, this.right);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(left), Text(right)],
      ),
    );
  }
}
