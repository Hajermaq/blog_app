import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/rounded_rectangle_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LogInLightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 120, 0.0, 0.0),
                  child: Text(
                    'Welcome \nBack.',
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
                      hintText: 'Email',
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
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password ?'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RoundedRectangleButton(
                      color: Colors.lightBlueAccent,
                      widget: Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RoundedRectangleButton(
                      color: Colors.lightBlueAccent,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.twitter,
                            size: 25, //Icon Size
                            color: Colors.white, //Color Of Icon
                          ),
                          Text(
                            'Sign in with Twitter',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: RoundedRectangleButton(
                      color: Colors.indigo,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.facebook,
                            size: 25, //Icon Size
                            color: Colors.white, //Color Of Icon
                          ),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New User? ',
                        style: TextStyle(fontSize: 18),
                      ),
                      InkWell(
                        child: Text(
                          'Sign Un',
                          style: TextStyle(
                              fontSize: 18, color: Colors.lightBlueAccent),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
