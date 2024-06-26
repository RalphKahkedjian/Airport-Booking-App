import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {

final String BigText;
final String SmallText;

  const AppDoubleTextWidget({super.key, required this.BigText, required this.SmallText});
  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(BigText, style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("you are tapped");
                      },
                      child: Text(SmallText, style: Styles.textStyle,),
                      )
                  ],
          );
      }
  }