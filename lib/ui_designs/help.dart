import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Overview section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris vel purus dapibus, euismod efficitur turpis sagittis. Vivamus id erat urna. Vestibulum ac blandit quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
            // Gallery upload section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Gallery Upload',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris vel purus dapibus, euismod efficitur turpis sagittis. Vivamus id erat urna. Vestibulum ac blandit quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  const SizedBox(height: 16.0),
                  // Add your gallery upload widget here
                ],
              ),
            ),
            // Real-time section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Real-time',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris vel purus dapibus, euismod efficitur turpis sagittis. Vivamus id erat urna. Vestibulum ac blandit quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
            //Learn about us
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Learn about us',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mauris vel purus dapibus, euismod efficitur turpis sagittis. Vivamus id erat urna. Vestibulum ac blandit quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  const SizedBox(height: 16.0),
                  // Add your gallery upload widget here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
