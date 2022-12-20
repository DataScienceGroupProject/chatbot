import 'package:flutter/material.dart';
import 'loging_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {

  @override
  void initState()
  {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async
  {
    await Future.delayed(const Duration(milliseconds:3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color(0xFF0B132B),
      body:Center(
        child: Container(
          child: Image.asset('assets/images/dsgp_logo_3.png')
        ),
      ),
    );
  }
}
