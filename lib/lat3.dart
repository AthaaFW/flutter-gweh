import 'package:flutter/material.dart';
import 'package:untitled/lat3home.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003658),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/building.png',
                height: 140,
                width: 140,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Roof Top',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Where do you want to sleep?',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  'Enter Shop',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  backgroundColor: Color(0xFFFC2940),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  minimumSize: Size(400, 70),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
