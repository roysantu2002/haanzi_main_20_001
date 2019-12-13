import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupHaanzi() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {});
    });
  }

  @override
  void initState() {
    super.initState();
    setupHaanzi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005582),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/loading.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SpinKitFadingCube(
            color: Colors.pink,
            size: 70.0,
          ),
        ),
      ),
    );
  }
}
