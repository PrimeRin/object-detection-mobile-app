import 'package:flutter/material.dart';
import 'package:object_detection_app/util/classes.dart';
import 'package:object_detection_app/widgets/trending_item.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Popular Items"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: classes == null ? 0 : classes.length,
              itemBuilder: (BuildContext context, int index) {
                Map cal = classes[index];

                return TrendingItem(
                  img: cal["img"],
                  title: cal["title"],
                  address: cal["address"],
                );
              },
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
