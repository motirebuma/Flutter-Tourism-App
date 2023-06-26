import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<String> imageUrls = [
    'assets/y.jpg',
    'assets/hm.jpg',
    'assets/wal.jpg',
    'assets/places/aa.jpg',
    'assets/places/eastern.png',
    'assets/places/north.jpg',
    'assets/places/southern2.jpg',
    'assets/places/aa.jpg',
    'assets/places/aa.jpg',
    'assets/places/north.jpg',
    'assets/places/southern2.jpg',
    'assets/places/aa.jpg',
    'assets/places/aa.jpg',
    'assets/places/north.jpg',
    'assets/places/southern2.jpg',
    'assets/places/aa.jpg',
    'assets/places/aa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Gallery'),
        backgroundColor: const Color(0xff1c1c1c),
        foregroundColor: const Color(0xffd27405),
      ),
      body: GridView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(imageUrl: imageUrls[index]),
                ),
              );
            },
            child: Image.asset(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatefulWidget {
  final String imageUrl;

  DetailScreen({required this.imageUrl});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1c1c1c),
        foregroundColor: const Color(0xffd27405),
        title: Text('Image Detail'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: PhotoView(
          imageProvider: AssetImage(widget.imageUrl),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 2,
          initialScale: PhotoViewComputedScale.contained,
        ),
      ),
    );
  }
}
