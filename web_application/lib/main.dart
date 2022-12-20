import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash%20screen.dart';

main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget
{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Splash(),
    );
  }



}

