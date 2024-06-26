import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_styles.dart';
import 'package:tickets/widgets/double_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/airplane-logo.png", width: 90, height: 90,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  Text("Yerevan", style: Styles.headLineStyle4.copyWith(color: Colors.grey),),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                       Container(
                    width: 180,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Styles.primaryColor
                    ),
                   
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.person_3_rounded, color: Colors.white,),
                        SizedBox(width: 15,),
                        Text("Ralph Kahkedjian",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    )
                  )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 35,),
          AppDoubleTextWidget(BigText: "Accumulated miles", SmallText: "",),
          SizedBox(height: 30,),
          Center(child: Text("123456", style: Styles.headLineStyle1.copyWith(fontSize: 40),),),
          SizedBox(height: 55,),
          Container(
            child: Column(
              children: [
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Miles accrued", style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
              Text("26 April 2024" ,style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("24 044", style: Styles.headLineStyle4.copyWith(color: Colors.grey),),
              Text("Airline CO", style: Styles.headLineStyle4.copyWith(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 25,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("32", style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
              Text("Unknown" ,style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("miles", style: Styles.headLineStyle4.copyWith(color: Colors.grey),),
              Text("Received from", style: Styles.headLineStyle4.copyWith(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 25,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("72 076", style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
              Text("Unknown" ,style: Styles.textStyle.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 21),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("miles", style: Styles.headLineStyle4.copyWith(color: Colors.grey),),
              Text("Received from", style: Styles.headLineStyle4.copyWith(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 45,),
          Center(child: InkWell(
            onTap: (){
              print("Tapped");
            },
            child: Text("How to get more miles", style: TextStyle(
              color: Color(0xFF687daf),
              fontSize: 16,
              fontWeight: FontWeight.bold
            )),
          ),)
              ],
              
            ),
          )
        ],
      ),
    );
  }
}