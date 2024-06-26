import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_layout.dart';
import 'package:tickets/utilis/app_styles.dart';
import 'package:tickets/widgets/icon_text_widget.dart';
import 'package:tickets/widgets/double_text_widget.dart';
import 'package:tickets/widgets/tickets_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
       padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
        children: [
          Text("What Are \nYou Looking For ?", style: Styles.headLineStyle1.copyWith(color: Colors.grey[800], fontSize: 30),),
          SizedBox(height: 15,),
          const AppTicketsTab(firstTab: "Airline Tickets", secondTab: "Hotels",),
          SizedBox(height: 20,),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure", ),
          SizedBox(height: 8,),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival", ),
          SizedBox(height: 25,),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryColor
            ),
            child: Center(
              child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 25,),
            AppDoubleTextWidget(BigText: "Upcoming Flights", SmallText:"View all +"),
               SizedBox(height: 25,),
           FittedBox(
            child:  Row(
              children: [
                Container(
                  height: 400,
                  width: size.width*.5,
                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/hotel.jpeg"
                            )
                          )
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("20% discount on the early booking of this flight. Don't miss it out !", style: Styles.headLineStyle3.copyWith(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ),
                SizedBox(width: 20,)
                ,Column(
                  children: [
                   Stack(
                    children: [
                       Container(
                      width: size.width*.44,
                      height: 235,
                      decoration: BoxDecoration(
                        color: Styles.orangeColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 17),
                       child: Column(
                        children: [  
                          Text("Discount\nfor survey", style: Styles.headLineStyle3.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
                          SizedBox(width: 3,height: 8,),
                          Text("Take the survey about our services and get a discount", style: Styles.headLineStyle4.copyWith(color: Colors.white,fontWeight: FontWeight.w400, fontSize: 17)),
                        ],
                       ),
                      ),
                        Positioned(
                          right: -56,
                          top: -35,
                          child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color.fromARGB(255, 243, 96, 70))
                        ),
                      ))
                    ],
                   ),
                   SizedBox(height: 10,),
                    Container(
                      width: size.width*.44,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 17),
                       child: Column(
                        children: [  
                          Text("Take Love", style: Styles.headLineStyle3.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
                          SizedBox(height: 5,),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 30),
                                ),
                                 TextSpan(
                                  text: '❤️',
                                  style: TextStyle(fontSize: 40),
                                ),
                                 TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ]

                          ))
                        ],
                       ),
                      ),
                  ],
                )
              ],
            ),
           )
        ],
      ),
    );
  }
}