import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_styles.dart';
import 'package:tickets/widgets/tickets_tab.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: 
      Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
        children: [
          Text("Tickets", style: Styles.headLineStyle1,),
          SizedBox(height: 25,),
          AppTicketsTab(firstTab: "Upcoming", secondTab: "Previous"),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.all(1),
            child: FittedBox(
              child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                          ),
                          padding: EdgeInsets.all(16),
                           child: Column(
                children: [
                  Row(
                    children: [
                      Text("YVN", style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                      const Spacer(),
                      Expanded(child: SizedBox(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: List.generate(9, (index)=> Text(
                            "-", style: TextStyle(
                              color: Colors.black
                            ),
                          )),
                        ),
                      )),
                      Transform.rotate(angle: 1.6, child: Icon(Icons.local_airport_rounded, color: Colors.black,)),
                     
                      const Spacer(),
                      Text("JMK", style: Styles.headLineStyle3.copyWith(color:Colors.black ),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Yerevan", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                    ),
                    Text("6H 28M", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                     SizedBox(
                      width: 100,
                      child: Text("Mykonos", style: Styles.headLineStyle4.copyWith(color: Colors.black), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
                        ),
                        
                      ],
                    )
                  ],
                ),
                Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(16),
                           child: Column(
                children: [
                  Row(
                    children: [
                      Text("6 July", style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                      const Spacer(),
                      Expanded(child: SizedBox(
                        child: Text("8:30 AM")
                      )),
                      const Spacer(),
                      Text("23", style: Styles.headLineStyle3.copyWith(color:Colors.black ),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                    ),
                    Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                     SizedBox(
                      width: 100,
                      child: Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.black), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
                        ),
                 Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(16),
                           child: Column(
                children: [
                  Row(
                    children: [
                      Text(" Unknown", style: Styles.headLineStyle2.copyWith(color: Color.fromARGB(199, 53, 52, 52)),),
                      const Spacer(),
                      Text("1111 123456", style: Styles.headLineStyle2.copyWith(color: const Color.fromARGB(199, 53, 52, 52)),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Passenger", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                    ),
                     SizedBox(
                      width: 100,
                      child: Text("Passport", style: Styles.headLineStyle4.copyWith(color: Colors.black), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
               ),
                Container(
                          width: 370,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(16),
                           child: Column(
                children: [
                  Row(
                    children: [
                      Text(" 0000 111 22222", style: Styles.headLineStyle2.copyWith(color: Color.fromARGB(199, 53, 52, 52)),),
                      const Spacer(),
                      Text("A1BSG22", style: Styles.headLineStyle2.copyWith(color: const Color.fromARGB(199, 53, 52, 52)),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Number of E-ticket", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                    ),
                     SizedBox(
                      width: 100,
                      child: Text("Booking code", style: Styles.headLineStyle4.copyWith(color: Colors.black), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
               ),
              Container(
                          width: 370,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                           
                          ),
                          padding: EdgeInsets.all(16),
                           child: Column(
                children: [
                  Row(
                    children: [
                      Text(" Visa *** 246*", style: Styles.headLineStyle2.copyWith(color: Color.fromARGB(199, 53, 52, 52)),),
                      const Spacer(),
                      Text("€149.99", style: Styles.headLineStyle2.copyWith(color: const Color.fromARGB(199, 53, 52, 52)),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Payment method", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                    ),
                     SizedBox(
                      width: 100,
                      child: Text("Price", style: Styles.headLineStyle4.copyWith(color: Colors.black), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
               ),
               
             Container(
              width: 370,
              height: 140,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                 color: Colors.white
              ),
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:  BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'https://github.com/martinovovo',
                drawText: false,
                color: Styles.textColor,
                width: 360,
                height: 85,
              ),
              ),
             ) 
              ],
            ),
            )
          ),
        ],
        ),
        ],
      )
    );
  }

}