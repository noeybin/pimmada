import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Food Ingredients';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(),
            TextSection(),
            ImageSection(),
            const Center(),
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.blue),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pad Thai',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text('Easy Thai Traditional Food Recipe',
                  style: TextStyle(fontSize: 16.0)),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Phat_Thai_kung_Chang_Khien_street_stall.jpg/1200px-Phat_Thai_kung_Chang_Khien_street_stall.jpg',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '- 250g (8.8 oz or 2 cups) Chopped/cubed Chicken Breast\n - 225g (7.9 oz or 1 cup) Minced Pork(Optional)\n - 1 cup PadThai Sauce',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
