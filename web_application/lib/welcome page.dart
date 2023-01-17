import 'package:flutter/material.dart';
import 'package:flutter_application_1/home%20page.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF0B132B),
      body:Center(
        child: Column(
          children: [
            Image.asset('assets/images/dsgp_logo_3.png',height:300,width:300,),
            const Text("Hello there,",style:TextStyle(color:Color(0xFFFFFFFF),fontSize:20,fontFamily:'Inder-Regular' ),),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:30, vertical:10),
              child: Text("Thank you for choosing us. We are happy to help you. You can either let us scan your voice or face to detect your mood. Feel free to tap the button below to get started..",style:TextStyle(color:Color(0xFFFFFFFF),fontSize:20,fontFamily:'Inder-Regular' ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:100,vertical:20),
              child: SizedBox(
                width:double.infinity,
                child:RawMaterialButton(
                  fillColor:const Color(0xFF5BC0BE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(_)
                    {
                      return const home_Screen();
                    }));
                  },
                  child:const Text("Get Started",style:TextStyle(
                    fontFamily:'Inder-Regular',
                    fontSize:20,
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
