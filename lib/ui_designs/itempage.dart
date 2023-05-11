import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

class ItemPage extends StatefulWidget {
  final String name;

  ItemPage({super.key, required this.name});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  late final String description;
  late final String imageUrl;
  late final String dzo_name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    defineImageDetails();
  }

  void defineImageDetails() {
    //widget.name
    imageUrl = "assets/des_images/${widget.name}.jpg";
    List<Map<String, dynamic>> dataList = [
  {
    'name': 'Dapa',
    'dzo_name': 'ཟླ་པ།',
    'description':
        'This product is made from the special wood burls and roots of trees.wooden bowls are used to serve food such as the round ones with a lid – bou dapa and dum chem dapa which are used to serve rice.'
  },
  {
    'name': 'DhaPhop',
    'dzo_name': 'ཤིང་ཕོར/ཟླ་ཕོར།',
    'description':
        'This high-quality Bhutanese Wooden Cup, locally called Dzaphob, is made from  the wood burl of trees or the special wooden knot on trees. Traditionally, wooden bowls and cups are used to serve food among Bhutanese households.'
  },
  {
    'name': 'Baap',
    'dzo_name': 'འབགཔ།',
    'description':
        'A beautiful Bhutanese mask handmade in Bhutan used for the religious mask dances. The mask is made out of light wood which is carefully crafted as per the Buddhists’ philosophies. The mask comes in different sizes and colors signifying different symbols in the Vajrayāna tradition of Buddhism.'
  },
  {
    'name': 'Jandhom',
    'dzo_name': 'པ་ལང།',
    'description':
        'A Palang is a traditional handmade container used to store Ara, a locally brewed wine. Also known as Jandom, this age-old craft is made from wood. It is covered with braided strips and pierced with two holes on the top. The wooden wine container is a common craft in eastern Bhutan communities. Offering Ara to a guest or relative from a Jandom is considered a source of pride and shows respect for the occasion. This tradition is valued even today, and it holds a special place in almost every home. It can even serve as a home decorative piece, giving your room a conventional appeal.'
  },
  {
    'name': 'Dophop',
    'dzo_name': 'འབྲུ་ཕོར།',
    'description':
        'Dophop are used to hold rice for religious purpose and during auspicious days. It is usually made out of Semi hard and soft wood. It is popular items in the market and can be easily found on the market today.'
  },
  {
    'name': 'Thopkay',
    'dzo_name': 'མཐོ་སྐལ།',
    'description':
        'Thopkay is a ceremonial container which holds fruits and other offerings during special occasions. It can be also used as decorative container in living rooms.'
  },
  {
    'name': 'Zaru',
    'dzo_name': 'གཟའ་རུ།',
    'description':
        'Zaru is a locally produced product made up of wood and used as kitchen utensils.  The main function of zaru as a kitchen utensil are: it’s used to serve curry, locally produced wine and sometimes even tea.  Zarus are in different size and design according to its functions .i.e. smallest ones are the ones which is used as utensil to serve curry. '
  },
  {
    'name': 'CheyDrum',
    'dzo_name': 'གཅོད་ཌམ།',
    'description':
        'Cheydrum is an instrument used in performing religious rituals. Cheydrum are made up of different materials such as wood, skull, leather and beautiful pieces of cloths. Cheydrum are used in place of cymbal in case of small religious rituals as an offering of soothing sound to please the gods (the Three Gems). Thelams and nuns carry them for their rituals. It is designed as per the size of the drum with beautiful patterns.'
  },
  {
    'name': 'Dramnyen',
    'dzo_name': 'སྒྲ་སྙན།',
    'description':
        'Drumnyen is an musical instrument used to add charm in songs.  It is about a meter long with a head of dragon, crocodile (Crocodile which Bhutanese believe, it existed once upon a time.   Not the one which we see today) a seven strings stretched in front which Bhutanese believe as a seven sisters blessed by goddesses of music the Yangchen Lhamo. Drumnyen can be used in every song however it is used largely and popularly with boedra, and Zhungdra songs of bhuta. It is made up of wood in combination with leather.'
  },
  {
    'name': 'Nga',
    'dzo_name': 'རྔ།',
    'description':
        'Nga (རྔ་) or drums are used widely in Bhutan as musical instruments for religious rituals or for folk music and performances. Drums are fundamental instruments in the set of religious musical kit. It is commonly used to regulate most of the religious chanting either on its own or with the accompaniment of a cymbal and other musical instruments. The Bhutanese drums have drumhead on the two sides of the wooden body and is usually played using drumsticks.'
  },
  {
    'name': 'Bangchung',
    'dzo_name': 'བང་ཅུང།',
    'description':
        'Bangchung, which is used as a plate by Bhutanese people. Bangchung is made of Yula, a species of bamboo. This item is used by the older generation to store  and eat food which can now also be considered as a traditional plates.'
  },
  {
    'name': 'Boelo',
    'dzo_name': 'བལ་ལོ།',
    'description':
        'Boelo is made of fine bamboo slices using beautiful patterns, while some are plain. Farmer wear Boelo while working in the farm to keep away from the hot sun and rain. This serves the purpose of hat in oldern days.'
  },
  {
    'name': 'LagchuDapa',
    'dzo_name': 'ལག་བཅུ་ཟླ་པ།',
    'description':
        'This is a Handmade Bamboo Container With Lid. It is handcrafted by traditionally-skilled artisans and is made in Bhutan. Indigenously produced in the eastern region of Bhutan, the diamond-patterned storage container is made of fine strips of Tula, a type of bamboo. The beautiful symmetrical pattern is a quintessential Bhutanese design that you will find in many woven baskets in Bhutanese homes.The Lagchu Dapa can be used for storing and serving snacks and sweets or to store your jewellery and knick-knacks. You can even use it as a decorative piece.'
  },
  {
    'name': 'Baykhu',
    'dzo_name': 'བེ་ཁུ།',
    'description':
        'Baykhu set is beautifully woven with fine Yula slices. It is used for displaying Tshog (religious offerings) while performing religious rituals and celebrations. It is also used as a decorative item in the house.'
  },
  {
    'name': 'Changsho',
    'dzo_name': 'ཆང་བཤོ།',
    'description':
        'Changsho is a strainer made from cane and bamboo strips used for strained the bangchang and other liquid alcohol. This was and is still a popular item used in Bhutan specially in eastern Dzongkhags.'
  },
  {
    'name': 'Zepchu',
    'dzo_name': 'གཟེབ་ཅུང།',
    'description':
        'Basket(Zepchu) comes in different sizes and colors. It is mostly made up of thinly sliced and long strips of cane. As Zepchu is mostly used as horse packs for long journeys, it is made sturdy enough to withstand falls and jolts. Nowadays it has gained popularity amongst tour operators in transporting camping equipment and edible items for tourists. '
  },
  {
    'name': 'Bangkhab',
    'dzo_name': 'བང་ཁ།',
    'description':
        'Bangkhab is a household item used for drying vegetables, storing fermented corn for brewing local ara, winnowing grains and for many other household chores. It is made of thinly sliced bamboo or cane pieces woven using skills called the five “(5) press and two (2) lift” systems. It is circular in shape, with different sizes firmly tightened and stitched with bamboo clips at the top.'
  },
  {
    'name': 'Dungshub',
    'dzo_name': 'དུང་ཤུབས།',
    'description':
        'Dungshub is intricately woven in cylindrical shape, using fine cane strips. Dungshub usually come in pair as they are used as protective covers for horns, religious wind instruments that come in pairs.'
  },
  {
    'name': 'Tseo',
    'dzo_name': 'ཙེའུ།',
    'description':
        'Tseo is a loosely woven backpack made of either cane or bamboo. It is generally used for carrying things during the daily chores and travels. This is usually used by the farmers in villages to carry firewood and many things related to their day to day activities.'
  },
  {
    'name': 'Dha',
    'dzo_name': 'མདའ།',
    'description':
        'Traditional arrows (Dha) used in playing the national game of Bhutan are made up of a special variety of bamboo found in the alpine and sub-alpine region of the country. This variety of bamboo is known for its lightness and tensile strength, in proportion to its size and length. Feathers and iron tips are attached at the either ends of the arrow using glue made either out of animal hide or plant extracts. The arrows are used for playing archery, and while performing religious rituals.'
  },
];

    for (var i = 0; i < dataList.length; i++) {
    if (dataList[i]['name'] == widget.name) {
      dzo_name = dataList[i]['dzo_name'];
      description = dataList[i]['description'];
    }
  }  

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Description'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height * 0.4 ,
                fit: BoxFit.fitWidth,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '${widget.name} (${dzo_name})',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
