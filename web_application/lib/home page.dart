import 'package:flutter/material.dart';
import 'package:flutter_application_1/sidebar.dart';


class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  int currentIndex = 0;

  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF0B132B),
      appBar:AppBar(
        backgroundColor: const Color(0xFF0B132B),
        title:const Text("Emution"),

      ),
      drawer: sideBar(),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15),
            child: Container(
              height:220,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image:AssetImage('assets/images/face.jpg',))
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:90,vertical:80),
                  child: SizedBox(
                    width:double.infinity,
                    child:RawMaterialButton(
                      fillColor:const Color(0xFFffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: () {},
                      child:const Text("Face recognition",style:TextStyle(
                        fontFamily:'Inder-Regular',
                        fontSize:20,
                      ),),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15),
            child: Container(
              height:220,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(image:AssetImage('assets/images/face.jpg',))
              ),
              child:Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:90,vertical:80),
                  child: SizedBox(
                    width:double.infinity,
                    child:RawMaterialButton(
                      fillColor:const Color(0xFFffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: () {},
                      child:const Text("Voice recognition",style:TextStyle(
                        fontFamily:'Inder-Regular',
                        fontSize:20,
                      ),),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ) ,

      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: const Color(0xFF0B132B),
        currentIndex: currentIndex,
        onTap:(int newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        }, items:  const [
          BottomNavigationBarItem(
            label:'',
            icon:Icon(Icons.home,
            color:Colors.white,
            size:35,)
          ),
        BottomNavigationBarItem(
            label:'',
            icon:Icon(Icons.message,
              color:Colors.white,
              size:35,)
        ),
        BottomNavigationBarItem(
            label:'',
            icon:Icon(Icons.search,
              color:Colors.white,
              size:35,)
        )
      ],
      ) ,
    );
  }
}
