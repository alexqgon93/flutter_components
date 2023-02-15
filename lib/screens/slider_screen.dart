import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              // divisions: 10,
              onChanged: _sliderEnable
                  ? (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    }
                  : null),
          /*Switch(
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value;
                  })),*/
          /*Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              }),*/
          CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })),
          SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value;
                  })),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://w0.peakpx.com/wallpaper/331/436/HD-wallpaper-mandalorian-001-star-wars-the-mandalorian.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ]));
  }
}
