import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Help(),
  ));
}

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

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
            ExpansionTile(
              title: Row(
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              children: [
                const SizedBox(height: 16.0),
                const Text(
                  'Our vision is to preserve and promote the rich cultural heritage of Bhutan by developing a state-of-the-art traditional Bhutanese wood and item recognition system that utilizes artificial intelligence and machine learning. We envision a future where individuals, both Bhutanese and foreign, can easily identify and learn about traditional Bhutanese wooden items with the help of our system, thereby increasing awareness and appreciation for Bhutanese culture and traditions.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
            ExpansionTile(
              title: Row(
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              children: [
                const SizedBox(height: 16.0),
                const Text(
                  'Our mission is to develop a reliable and accurate traditional Bhutanese wood and item recognition system that is accessible to everyone. We strive to achieve this by leveraging the latest advancements in artificial intelligence and machine learning technologies to create a user-friendly and reliable platform that can accurately identify traditional Bhutanese wooden items. Our system will serve as a valuable tool for Bhutanese artisans, wood enthusiasts, and anyone interested in learning more about Bhutanese culture and traditions.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: Row(
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              children: [
                const SizedBox(height: 16.0),
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
                                radius: 34.0,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Yeshi Jamtsho',
                                style: TextStyle(
                                  fontSize: 14,
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
                                    AssetImage('assets/images/prime.jpg'),
                                radius: 34.0,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Pema Rinchen',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Developer',
                                style: TextStyle(fontSize: 12),
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
                                    AssetImage('assets/images/nikita.gif'),
                                radius: 34.0,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Nikita Sharma',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'UX /UI Designer',
                                style: TextStyle(fontSize: 12),
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
                                    AssetImage('assets/images/sonam.jpg'),
                                radius: 34.0,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Sonam',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Developer',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
