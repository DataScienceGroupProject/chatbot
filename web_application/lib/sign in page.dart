import 'package:flutter/material.dart';
import 'package:flutter_application_1/loging_screen.dart';
class signInPage extends StatefulWidget {
  const signInPage({Key? key}) : super(key: key);

  @override
  State<signInPage> createState() => _signInPageState();
}

class _signInPageState extends State<signInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B132B),
      body:Center(
        child:Column(
          children: [
            Image.asset('assets/images/dsgp_logo_3.png',height:200,width:200,),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0, 270, 0),
              child: Text("First name",textAlign:TextAlign.end ,style:TextStyle(
                color: Colors.white,
                fontFamily:'Inder-Regular',
                fontSize:15,
              ),),
            ),
            const SizedBox(height:8,),
            Padding(
                padding:const EdgeInsets.symmetric(horizontal:10),
                child:Container(
                  decoration:BoxDecoration(
                    color:const Color(0xFF5D6978),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal:10),
                    child: TextField(
                      style:TextStyle(color:Color(0xFFFFFFFF)),
                      decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText:"Enter your first name here",
                          hintStyle:TextStyle(
                              color:Color(0xFFFFFFFF),
                              fontFamily:'Inder-Regular')
                      ),
                    ),
                  ),
                ),),
            const SizedBox(height:10,),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0, 270, 0),
              child: Text("Last name",textAlign:TextAlign.end ,style:TextStyle(
                color: Colors.white,
                fontFamily:'Inder-Regular',
                fontSize:15,
              ),),
            ),
            const SizedBox(height:8,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal:10),
              child:Container(
                decoration:BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
                    style:TextStyle(color:Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Enter your last name here",
                        hintStyle:TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontFamily:'Inder-Regular')
                    ),
                  ),
                ),
              ),),
            const SizedBox(height:10,),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0, 310, 0),
              child: Text("Email",textAlign:TextAlign.end ,style:TextStyle(
                color: Colors.white,
                fontFamily:'Inder-Regular',
                fontSize:15,
              ),),
            ),
            const SizedBox(height:8,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal:10),
              child:Container(
                decoration:BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
                    style:TextStyle(color:Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Enter your Email here",
                        hintStyle:TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontFamily:'Inder-Regular')
                    ),
                  ),
                ),
              ),),
            const SizedBox(height:10,),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0, 280, 0),
              child: Text("Password",textAlign:TextAlign.end ,style:TextStyle(
                color: Colors.white,
                fontFamily:'Inder-Regular',
                fontSize:15,
              ),),
            ),
            const SizedBox(height:8,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal:10),
              child:Container(
                decoration:BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
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
              ),),
            const SizedBox(height:10,),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,0, 240, 0),
              child: Text("Retype password",textAlign:TextAlign.end ,style:TextStyle(
                color: Colors.white,
                fontFamily:'Inder-Regular',
                fontSize:15,
              ),),
            ),
            const SizedBox(height:8,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal:10),
              child:Container(
                decoration:BoxDecoration(
                  color:const Color(0xFF5D6978),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: TextField(
                    style:TextStyle(color:Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Retype the password here",
                        hintStyle:TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontFamily:'Inder-Regular')
                    ),
                  ),
                ),
              ),),
            const SizedBox(height:10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:120),
              child: SizedBox(
                width:double.infinity,
                child:RawMaterialButton(
                  fillColor:const Color(0xFF5BC0BE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed: () {},
                  child:const Text("Sign in",style:TextStyle(
                      fontFamily:'Inder-Regular',
                      fontSize:20,
                      color:Color(0xFFFFFFFF)
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
                      return HomeScreen();
                    }));
                  },
                  child:const Text("Back",style:TextStyle(
                      fontFamily:'Inder-Regular',
                      fontSize:20,
                      color:Color(0xFFFFFFFF)
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
