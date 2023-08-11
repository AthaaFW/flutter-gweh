import 'package:flutter/material.dart';
import 'package:untitled/lat3form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget footerSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.home_filled,
            color: Color(0xFF003658),
          ),
          label: Text(
            'Shop',
            style: TextStyle(
                color: Color(0xFF003658),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(18.0),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0),
            ),
          ),
        ),
        SizedBox(width: 20,),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_up_rounded,
              color: Color(0xFF003658),
            ),
          ),
        )
      ],
    );

    Widget buttonSection = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ButtonRow('Hotel', '\$45'),
        SizedBox(
          height: 20,
        ),
        _ButtonRow('Hotel', '\$45'),
        SizedBox(
          height: 20,
        ),
        _ButtonRow('Hotel', '\$45'),
        SizedBox(
          height: 20,
        ),
        _ButtonRow('Hotel', '\$45'),
      ],
    );

    return Scaffold(
      backgroundColor: Color(0xFF003658),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF003658),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFFFC2940),
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 20.00, top: 10.00, right: 20.00, bottom: 10.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Where do you want to sleep?',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            buttonSection,
            SizedBox(
              height: 20,
            ),
            footerSection
          ],
        ),
      ),
    );
  }

  Container _ButtonRow(String label, String price) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/building.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      price,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Lat3form()),
                );
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.00)),
    );
  }
}
