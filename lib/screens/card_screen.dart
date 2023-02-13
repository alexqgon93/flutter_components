import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.photo_album_outlined,
                    color: AppTheme.primary,
                  ),
                  subtitle: Text(
                      'Laboris commodo elit elit voluptate aliqua. Aliquip incididunt commodo laborum id velit laboris fugiat anim aliquip duis exercitation exercitation dolore. Ut consequat est labore duis cupidatat nisi fugiat irure. Tempor occaecat irure elit do elit id ipsum sit irure pariatur pariatur pariatur.'),
                  title: Text('Esto es una Card con titulo'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
