// import public pacakages
import 'package:flutter/material.dart';
//import my own files
import './components/app_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // get current screen dimension
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: const <Widget>[
          AppMenu(),
        ],
      ),
    );
  }
}
