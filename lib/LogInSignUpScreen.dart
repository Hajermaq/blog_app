import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87])
              .createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.darken),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  'The Futuer of \nPhotography \n& Unsplash',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tobias_1.jpg'),
                ),
                title: Text(
                  'Tobias Van',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.lightBlueAccent,
                      size: 15,
                    ),
                    Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(fontSize: 18),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          color: Colors.lightBlueAccent,
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(fontSize: 18),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
