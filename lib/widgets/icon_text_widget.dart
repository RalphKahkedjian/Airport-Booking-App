import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_styles.dart';

class AppIconText extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(15),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
         ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(icon, color: const Color.fromARGB(255, 144, 141, 141),),
                  SizedBox(width: 18,),
                  Text(text, style: Styles.textStyle.copyWith(color: const Color.fromARGB(255, 144, 141, 141),fontSize: 17),)
                ],
              )
            ],
          ),
         );
  }
}