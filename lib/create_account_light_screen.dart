import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/rounded_rectangle_button.dart';

class CreateAccountLightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 120, 0.0, 0.0),
                  child: Text(
                    'Create \nAccount.',
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 209, 0.0, 0.0),
                  child: Container(
                    color: Colors.lightBlueAccent,
                    height: 3,
                    width: 50,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, top: 35, right: 16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Create Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: RoundedRectangleButton(
                      color: Colors.lightBlueAccent,
                      widget: Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(fontSize: 18),
                        ),
                        InkWell(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 18, color: Colors.lightBlueAccent),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
