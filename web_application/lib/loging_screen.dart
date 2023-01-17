import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign%20in%20page.dart';
import 'package:flutter_application_1/welcome%20page.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF0B132B),
      body:Center(
        child:Column(
          children: [
            Image.asset('assets/images/dsgp_logo_3.png',height:250,width:250,),
            const Text("Hello Again,",style:TextStyle(color:Color(0xFFFFFFFF),fontSize:20,fontFamily:'Inder-Regular' ),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
                    style:TextStyle(color:Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText:"Enter your email here",
                      hintStyle:TextStyle(
                          color:Color(0xFFFFFFFF),
                      fontFamily:'Inder-Regular')
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
                    obscureText:true,
                    style:TextStyle(color:Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Enter your password here",
                        hintStyle:TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontFamily:'Inder-Regular')
                    ),
                  ),
                ),
              ),
            ),
            const Text("Forgot Password ?",style:TextStyle(color:Color(0xFFFFFFFF),fontSize:15,fontFamily:'Inder-Regular' ),),
            const SizedBox(height:20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:120),
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
                    return const welcome_screen();
                  }));
                },
                child:const Text("Log in",style:TextStyle(
                  fontFamily:'Inder-Regular',
                  fontSize:20,
                ),),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:120),
              child: SizedBox(
                width:double.infinity,
                child:RawMaterialButton(
                  fillColor:const Color(0xFF3A506B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(_){
                      return const signInPage();
                    }));
                  },
                  child:const Text("Sign in",style:TextStyle(
                    fontFamily:'Inder-Regular',
                    fontSize:20,
                    color:Color(0xFFFFFFFF)
                  ),),
                ),
              ),
            ),
            const SizedBox(height:12),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
               Expanded(child:Padding(
                 padding: EdgeInsets.symmetric(horizontal:15),
                 child: Divider(
                   color:Colors.white,
                   height:20,
                 ),
               )),
                Text("Sign in with",style:TextStyle(
                  color:Colors.white,
                  fontSize:15,
                  fontFamily:'Inder-Regular'
                ),),
                Expanded(child:Padding(
                  padding: EdgeInsets.symmetric(horizontal:15),
                  child: Divider(
                    color:Colors.white,
                  ),
                ))
              ],
            ),
            const SizedBox(height:10,),
            SignInButton(
              Buttons.Facebook,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)) ,
              onPressed: (){},
            ),

            SignInButton(
              Buttons.Google,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)) ,
              onPressed: (){},
            )


          ],
        ),
      ),
    );
  }
}
