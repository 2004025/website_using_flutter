import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colors.dart';
import 'package:flutter_app/utils/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop:DesktopNavBar() ,
    );
  }


  //==========MOBILETHINGS=============



  Widget MobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navlogo(),
        ],
      ),
    );
  }

  //=======DESKTOPTHINGS========



  Widget DesktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Icon(Icons.menu),
          navlogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About us"),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderButtonStyle,
              onPressed: (){},
              child:  Text("Request a Demo",
              style: TextStyle(
                color: AppColors.primary
              ),),
            ),
          )
        ],
      ),
    );
  }
  Widget navButton(String text){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          onPressed: (){},
          child: Text(
            text,
              style: TextStyle(
                color:  Colors.black,
                fontSize: 18,
              )
          ),

        ),
      )   ;
  }
  Widget navlogo(){
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            logo,
          )
        )
      ),
    );
  }
}
