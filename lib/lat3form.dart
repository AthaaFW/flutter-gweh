import 'package:flutter/material.dart';

class Lat3form extends StatelessWidget {
  const Lat3form({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Avatar = SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://awsimages.detik.net.id/community/media/visual/2022/06/16/ryan-gosling-2_34.jpeg?w=375"),
          ),
          Positioned(
              bottom: 0,
              right: -25,
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Color(0xFFF5F6F9),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              )),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF003658),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF003658),
      ),
      body: Center(
        child: Column(
          children: [
            Avatar,
            SizedBox(
              height: 40,
            ),
            TheForm(),
          ],
        ),
      ),
    );
  }
}

class TheForm extends StatefulWidget {
  const TheForm({super.key});

  @override
  State<TheForm> createState() => _TheFormState();
}

String selectedGender = '1 Person';
String selectedPack = 'Normal Pack';

class _TheFormState extends State<TheForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
              filled: true,
              fillColor: Colors.white,

            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              labelText: 'Email',
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(color: Colors.white),
                child: DropdownButton<String>(
                  value: selectedGender,
                  onChanged: (newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
                  },
                  items: <String>['1 Person', '2 Person', '3 Person']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(color: Colors.white),
                child: DropdownButton<String>(
                  value: selectedPack,
                  onChanged: (newValue) {
                    setState(() {
                      selectedPack = newValue!;
                    });
                  },
                  items: <String>['Normal Pack', 'Premium Pack', 'VVIP Pack']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'DD/MM/YY',
              labelText: 'Date',
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Book',
                style: TextStyle(color: Color(0xFF003658), fontSize: 25),
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
