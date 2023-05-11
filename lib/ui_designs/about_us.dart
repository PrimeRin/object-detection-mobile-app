import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AboutUsPage(),
  ));
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

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
              initiallyExpanded: true,
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
                    'App Overview',
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
                  "There are varieties of traditional Bhutanese objects used and produced in different parts of our country.Implementing deep learning to build a traditional object recognition system can assist both Bhutanese and foreigners to learn more about our unique cultures and traditions. Our model will be able to detect 10 wooden objects and 10 cane object which are Dapa, Dhaphob, Baap, Jandhom, Dophob, Thopkay, Zaru, Cheydrum, Dramyen , Nga , Bangchung, Beolo, LagchuDapa, Baykhu, Changsho, Zepchu, Bangkhab, Dungshub, Tseo and Dha. ",
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
                    'Gallery Upload',
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
                  "The applications allow users to easily upload images from their gallery and obtain accurate predictions about the type of wood or item they are dealing with. With just a few clicks, users can access the gallery upload feature and select the image they want to analyze. Once the image is uploaded, the system uses advanced machine learning algorithms to identify the type of wood or item present in the image and provide the user with a prediction. This feature allows users to quickly and accurately identify unknown woods and items, making it a valuable tool for Bhutanese carpenters, artisans, and wood enthusiasts.",
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
                    "Real Time Detection",
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
                  "In addition to gallery image uploads, the Traditional Bhutanese Wood and Item Recognition System also offers real-time recognition capabilities using the device's camera. This means that users can simply open the camera within the app and point it at a traditional Bhutanese wood or item to get an instant prediction of what it is. This feature is particularly useful for users who may come across a traditional Bhutanese wood or item in real life and want to quickly identify it. With this app, the process of identifying traditional Bhutanese woods and items becomes both more convenient and accessible.",
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
                    'Learn About Us',
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
                  "This application is developed as final year project undertaken by Pema Rinchen, Nikita Sharm and Sonam, guided by Sir Yeshi Jamtsho. The project aims to develop a system that can recognize traditional Bhutanese wooden items using computer vision and machine learning techniques. \n \n The project involved extensive research and development of computer vision algorithms and machine learning models. The team also had to collect and curate a diverse dataset of traditional Bhutanese wooden items to train and validate the models.",
                  style: TextStyle(fontSize: 16),
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
