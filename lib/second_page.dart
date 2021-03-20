import 'package:flutter/material.dart';
import 'package:task2_zanuar/main_page.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool checkBoxValue = false;
  bool checkBoxValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Coba Dulu"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 160,
              width: 160,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 70, right: 70),
              child: TextField(
                style: TextStyle(fontSize: 17),
                decoration: InputDecoration(
                    hintText: 'NickName',
                    hintStyle: TextStyle(
                      fontSize: 14,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Nama"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Text("Available to mentor"),
                  Padding(padding: EdgeInsets.only(left: 150)),
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Text("Needs Mentoring"),
                  Padding(padding: EdgeInsets.only(left: 165)),
                  Checkbox(
                    value: checkBoxValue1,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue1 = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Bio"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Slack Name"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Location"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(labelText: "Accupation"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.edit), onPressed: () {}),
    );
  }
}
