import 'package:flutter/material.dart';
import 'package:tickets/screens/hotel_view.dart';
import 'package:tickets/screens/hotel_view_two.dart';
import 'package:tickets/screens/hotel_view_three.dart';
import 'package:tickets/utilis/app_styles.dart';
import 'package:tickets/screens/ticket_view_one.dart';
import 'package:tickets/screens/ticket_view_two.dart';
import 'package:tickets/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning",
                      style: Styles.headLineStyle3,
                      ),
                      SizedBox(height: 4,),
                      Text("Book Tickets",
                      style: Styles.headLineStyle1,
                      )
                    ],
                   ),
                 Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Color(0xFF687daf), // The desired color
                        BlendMode.srcIn, // This blend mode will replace the image color
                      ),
                      child: Image.asset(
                        "assets/airplane-logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  
                  ),
                  padding:const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.grey[600],),
                      SizedBox(width: 10,),
                      Text("Search", style: Styles.headLineStyle4,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
               AppDoubleTextWidget(BigText: "Upcoming Flights", SmallText:"View all +"),
              ],
              
            )
          )
          , 
          SizedBox(height: 15,),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
               TicketView1(),
               TicketView2(),
            ],
          ),
          ),
          SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:   AppDoubleTextWidget(BigText: "Hotels", SmallText:"View all +"),
            ),
            SizedBox(height: 15,),
             SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
               HotelView(),
               HotelView2(),
               HotelView3(), 
            ],
          ),
          ),
        ], 
      ),
    );
  }
}