import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF5F6F9), width: 3),
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.57), blurRadius: 5)
              ],
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://awsimages.detik.net.id/community/media/visual/2022/06/16/ryan-gosling-2_34.jpeg?w=375"),
            ),
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
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
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

String selectedRegion = 'Cihapit';
String selectedPack = 'Normal Pack';

class _TheFormState extends State<TheForm> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState(){
    dateinput.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.only(top:18.0, left: 50, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    //apply shadow on Dropdown button
                    BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: DropdownButton<String>(
                    value: selectedRegion,
                    onChanged: (newValue) {
                      setState(() {
                        selectedRegion = newValue!;
                      });
                    },
                    items: <String>[
                      'Cihapit',
                      'London',
                      'Bekasi',
                      'Tokyo',
                      'Atlantis',
                      'Olympus',
                      'Land Of Dawn',
                      'Ruang Sekre'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    underline: Container(),
                  ),
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    //apply shadow on Dropdown button
                    BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
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
                    underline: Container(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                controller: dateinput,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Enter Date"
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101)
                  );

                  if(pickedDate != null){
                    print(pickedDate);
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);

                    setState(() {
                      dateinput.text = formattedDate;
                    });
                  }else{
                    print("Please insert your date");
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Container(
              decoration: BoxDecoration(

              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
