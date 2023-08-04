import 'package:flutter/material.dart';
import 'package:untitled/interactivity.dart';
import 'package:untitled/lat2.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Lat2(),
                  ),
                );
              }, child: Text('Lat2')),
            ),
            SizedBox(height: 10), //Spacer
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Lat3(),
                  ),
                );
              }, child: Text('Interact')),
            ),
          ],
        ),
      ),
    );
  }
}
