import 'package:flutter/material.dart';
import 'package:flutter_app/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );

  }

  Widget MobileContainer2(){
    return Container(

    );
  }




  Widget DesktopContainer2(){

    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,

      ),
      child: Column(
        children: [
          Expanded(child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20
                ,
                  child: Container(
                      height: 320,
                      width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector1),
                        )
                    ),

              )),
              Positioned(
                  bottom: -20,
                  left: -20
                  ,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(vector2),
                        )
                    ),

                  )),


              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,

                  child:Container(
                    height: 712,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard)
                      )
                    ),
                  ))
            ],
          )),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companylogo(fb),
                companylogo(google),
                companylogo(cocacola),
                companylogo(samsung),

              ],
            )
            ,),

        ],
      ),

    );
  }
  Widget companylogo(String image){
    return Container(
      width: 160,
      height: 40,
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
      ),
    );
  }
}
