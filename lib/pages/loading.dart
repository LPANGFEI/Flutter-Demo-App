import 'package:flutter/material.dart';
import 'package:flutter_demo_app/services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime worldTime = WorldTime(location: '北京', url: 'Asia/Shanghai');
    await worldTime.getData();

    // 路透跳转（添加），context，路由地址，传参
    Navigator.pushNamed(context, '/home',
        arguments: {'location': worldTime.location, 'time': worldTime.time});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF293C4F),
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
