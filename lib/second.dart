import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  Widget showProfileImage() {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.deepOrangeAccent,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('images/PIC.jpg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                showProfileImage(),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'How Hungry are You Today ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TextFormField(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
