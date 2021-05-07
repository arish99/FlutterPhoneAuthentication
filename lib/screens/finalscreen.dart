import 'package:flutter/material.dart';

enum Utility { shipper, transporter }

class FinalPage extends StatefulWidget {
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  Utility? _util = Utility.shipper;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Please select your profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: [
                  Radio<Utility>(
                    value: Utility.shipper,
                    groupValue: _util,
                    onChanged: (Utility? value) {
                      setState(() {
                        _util = value;
                      });
                    },
                    activeColor: Colors.indigo[900],
                  ),
                  Image.asset(
                    'assets/ic1.PNG',
                    height: 60.0,
                    width: 60.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipper',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      SizedBox(
                        child: Text(
                          'Lorem ipsum dolor sit amet,consectetur adipiscing',
                          style: TextStyle(
                              fontSize: 13.0, color: Colors.blueGrey.shade300),
                        ),
                        width: 180,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: [
                  Radio<Utility>(
                    value: Utility.transporter,
                    groupValue: _util,
                    onChanged: (Utility? value) {
                      setState(() {
                        _util = value;
                      });
                    },
                    activeColor: Colors.indigo[900],
                  ),
                  Image.asset(
                    'assets/ic2.PNG',
                    height: 60.0,
                    width: 60.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transporter',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      SizedBox(
                        child: Text(
                          'Lorem ipsum dolor sit amet,consectetur adipiscing',
                          style: TextStyle(
                              fontSize: 13.0, color: Colors.blueGrey.shade300),
                        ),
                        width: 180,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.all(25.0),
                color: Colors.indigo[900],
                onPressed: () {},
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
