//We are a startup company based in the heart of the city. Our mission is to create innovative solutions that help people achieve their goals and improve their lives.
//We are a startup company based in the heart of the city. Our mission is to create innovative solutions that help people achieve their goals and improve their lives.

// buildSection(
//               index: 0,
//               title: 'Overview',
//               description: 'There are varieties of traditional Bhutanese objects used and produced in different parts of our country.Implementing deep learning to build a traditional object recognition system can assist both Bhutanese and foreigners to learn more about our unique cultures and traditions. Our model will be able to detect 10 wooden objects and 10 cane object which are Dapa, Dhaphob, Baap, Jandhom, Dophob, Thopkay, Zaru, Cheydrum, Dramyen , Nga , Bangchung, Beolo, LagchuDapa, Baykhu, Changsho, Zepchu, Bangkhab, Dungshub, Tseo and Dha. ',
//             ),
//             _buildSection(
//               index: 1,
//               title: 'Gallery Upload',
//               description: "The applications allow users to easily upload images from their gallery and obtain accurate predictions about the type of wood or item they are dealing with. With just a few clicks, users can access the gallery upload feature and select the image they want to analyze. Once the image is uploaded, the system uses advanced machine learning algorithms to identify the type of wood or item present in the image and provide the user with a prediction. This feature allows users to quickly and accurately identify unknown woods and items, making it a valuable tool for Bhutanese carpenters, artisans, and wood enthusiasts.",
//             ),
//             _buildSection(
//               index: 2,
//               title: 'Real-time',
//               description: "In addition to gallery image uploads, the Traditional Bhutanese Wood and Item Recognition System also offers real-time recognition capabilities using the device's camera. This means that users can simply open the camera within the app and point it at a traditional Bhutanese wood or item to get an instant prediction of what it is. This feature is particularly useful for users who may come across a traditional Bhutanese wood or item in real life and want to quickly identify it. With this app, the process of identifying traditional Bhutanese woods and items becomes both more convenient and accessible.",
//             ),
//             _buildSection(
//               index: 3,
//               title: 'Learn about us',
//               description: "This application is developed as final year project undertaken by Pema Rinchen, Nikita Sharm and Sonam, guided by Sir Yeshi Jamtsho. The project aims to develop a system that can recognize traditional Bhutanese wooden items using computer vision and machine learning techniques. \n \n The project involved extensive research and development of computer vision algorithms and machine learning models. The team also had to collect and curate a diverse dataset of traditional Bhutanese wooden items to train and validate the models.",
//             ),

// Scaffold(
//       appBar: AppBar(
//         title: const Text('Visual Sense'),
//         elevation: 6.0,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           shrinkWrap: true,
//           physics: const BouncingScrollPhysics(),
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Image.asset(
//                 'assets/images/logo.png',
//                 fit: BoxFit.fitHeight,
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.dark_mode_rounded),
//               title: const Text(
//                 'Dark Mode',
//                 style: const TextStyle(
//                   fontSize: 16.0,
//                 ),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.people_outline_rounded),
//               title: const Text(
//                 'About Us',
//                 style: const TextStyle(
//                   fontSize: 16.0,
//                 ),),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Help()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.help_center_rounded),
//               title: const Text(
//                 'Help?',
//                 style: const TextStyle(
//                   fontSize: 16.0,
//                 ),
//                 ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const AboutUsPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             FocusScopeNode currentFocus = FocusScope.of(context);
//             if (!currentFocus.hasPrimaryFocus) {
//               currentFocus.unfocus();
//             }
//           },
//           child: _selectedIndex == 0
//               ? Container(
//                   padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
//                   child: ListView(
//                     children: <Widget>[
//                       buildPopularRow('Popular Items', context),
//                       const SizedBox(height: 10.0),
//                       buildPopularList(context),
//                       const SizedBox(height: 10.0),
//                       buildWoodRow('Wood Items', context),
//                       const SizedBox(height: 10.0),
//                       buildWoodList(context),
//                       const SizedBox(height: 20.0),
//                       buildWoodRow('Cane Items', context),
//                       const SizedBox(height: 10.0),
//                       buildCanesList(context),
//                       const SizedBox(height: 10.0),
//                     ],
//                   ),
//                 )
//               : _selectedIndex == 1
//                   ? buildPrediction(context)
//                   : null,
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.photo_library),
//             label: 'Gallery',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.play_circle_outline),
//             label: 'Real Time',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         //onTap: _onItemTapped,
//         onTap: _onItemTapped,
//       ),
//     );