import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Son Goku'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
                backgroundColor: Colors.red, child: Text('SG')),
          )
        ],
      ),
      body: const Center(
        // container circular meter dentro lo que es el tema del fadein
        child: ClipOval(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://images.hdqwalls.com/wallpapers/dragon-ball-son-goku-4k-bl.jpg'),
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
        ),
      ), /*CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://images.hdqwalls.com/wallpapers/dragon-ball-son-goku-4k-bl.jpg'),
        ),*/
    );
  }
}
