import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 接收路由参数
  Map datas = {};

  @override
  Widget build(BuildContext context) {
    // 在build里接收路由传参
    datas = ModalRoute.of(context).settings.arguments;
    print(datas);
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
        children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('EditLocation'),
            ),
            SizedBox(
              height: 20.90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    datas['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 20.90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  datas['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                  ),
                ),
              ],
            ),
        ],
      ),
          )),
    );
  }
}
