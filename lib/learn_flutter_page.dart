import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {

bool isSwitch = false;
bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
            actions: [
              IconButton(onPressed: () {
                debugPrint("Info");
              }, icon:const Icon(Icons.info_outline))
            ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('./images/flut.jpg'),
          const Divider(color: Colors.black),
          Container(
            color: Colors.teal,
            margin: const EdgeInsets.only(bottom: 10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            child: const Center(
              child: Text(
                "Text Widget",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          OutlinedButton(
            
              onPressed: () {
                debugPrint('OutlinedButton');
              },
              child: const Text('OutlinedButton')),
          GestureDetector(
            onTap:() {
              debugPrint('Icon pres');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department),
                Text('Row'),
                Icon(Icons.local_fire_department),
              ],
            ),
          ),
          Switch(value: isSwitch, onChanged: (bool newBool) {
            setState(() {
              isSwitch = newBool;
            });
          }),
          Checkbox(value: isCheck, onChanged: (bool? newBool) {
            setState(() {
              isCheck = newBool;
            });
          }),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7O2eMeJZDMfzpvZEEmwLs1Xjx5y1sd7iyyw&usqp=CAU')
        ]),
      ),
    );
  }
}
