import 'package:flutter/material.dart';
import 'package:task2_zanuar/second_page.dart';

enum SingingCharacter { lafayette, jefferson }

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  bool checkBoxValue0 = false;
  bool checkBoxValue = false;
  bool checkBoxValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(20)),
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 23, left: 23),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              labelText: "Name",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 23, left: 23),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              labelText: "Username",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 23, left: 23),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              labelText: "Email",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 23, left: 23),
          child: TextFormField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                labelText: "Password",
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    })),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 23, left: 23),
          child: TextFormField(
            obscureText: _isObscure1,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                labelText: "Confirm Password",
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure1 = !_isObscure1;
                      });
                    })),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 14, bottom: 10),
          child: Text("Available to be a"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(),
              child: Checkbox(
                value: checkBoxValue0,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxValue0 = value;
                    checkBoxValue = false;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Text("Mentor"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Checkbox(
                value: checkBoxValue,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxValue = value;
                    checkBoxValue0 = false;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Text("Mentee"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Checkbox(
                    value: checkBoxValue1,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue1 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width: 300,
                  height: 70,
                  child: Text(
                    "i affirm that i have read and accept to be bound by the AnitaB.org Code of Conduct , Terms and Privacy Policy. Further , I consent to use of my information for the stated purpose",
                    style: TextStyle(height: 1.2, fontWeight: FontWeight.w200),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Center(
            child: ButtonTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minWidth: 280.0,
          height: 60.0,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ))
      ],
    ));
  }
}
