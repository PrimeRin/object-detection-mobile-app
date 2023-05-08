import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AboutUsPage(),
  ));
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        leading: BackButton(
          color: const Color.fromARGB(255, 15, 7, 7),
          onPressed: () {
            // Navigate back to the home screen
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
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
                  'Our Vision',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'We are a startup company based in the heart of the city. Our mission is to create innovative solutions that help people achieve their goals and improve their lives.',
              style: TextStyle(fontSize: 12.0),
            ),
            const SizedBox(height: 16.0),
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
                  'Mission',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'We are a startup company based in the heart of the city. Our mission is to create innovative solutions that help people achieve their goals and improve their lives.',
              style: TextStyle(fontSize: 12.0),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
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
                  'Our Team',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ListView(
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/guide.jpg'),
                            radius: 32.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Yeshi Jamtsho',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Guide',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/person4.jpg'),
                            radius: 32.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Pema Rinchen',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Developer',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/person4.jpg'),
                            radius: 32.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Nike Sharma',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'UX Designer',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/person5.jpg'),
                            radius: 32.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Sonam',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'UX Designer',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
