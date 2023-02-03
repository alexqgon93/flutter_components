import 'package:flutter/material.dart';
import 'package:flutter_components/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de ruta'),
                  leading: const Icon(Icons.access_alarm_outlined),
                  onTap: () {
                    Navigator.pushNamed(context, 'card');
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 100));
  }
}
