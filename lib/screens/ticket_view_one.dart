import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_layout.dart';
import 'package:tickets/utilis/app_styles.dart';
import 'package:tickets/widgets/thick_container.dart';

class TicketView1 extends StatelessWidget {
  const TicketView1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*1.1,
      height: 200,
      child: Container(
         margin: const EdgeInsets.only(left: 16, right: 16), 
        child: Column(
          children: [
            // Blue Card Of The Ticket
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: const Color(0xFF526799),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("YVN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(child: SizedBox(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: List.generate(9, (index)=> Text(
                            "-", style: TextStyle(
                              color: Colors.white
                            ),
                          )),
                        ),
                      )),
                      Transform.rotate(angle: 1.6, child: Icon(Icons.local_airport_rounded, color: Colors.white,)),
                      ThickContainer(),
                      const Spacer(),
                      Text("JMK", style: Styles.headLineStyle3.copyWith(color:Colors.white ),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Yerevan", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text("6H 28M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                     SizedBox(
                      width: 100,
                      child: Text("Mykonos", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
            )
             // Red Card Of The Ticket
           ,Container(
            color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      return Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate((constraints.constrainWidth()/15).floor(), (index)=> SizedBox(
                      width: 5,
                      height: 1,
                      child: DecoratedBox(decoration: 
                      BoxDecoration(
                        color: Colors.white
                      ),),
                    )),
                    );
                    },
                  )
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)
                        ),
                      ),
                    ),
                  )],
              ),
            )
          
          ,Container(
             decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                color: Styles.orangeColor,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("6 July", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Spacer(),
                      
                      Expanded(child: Center(
                        
                        child: Text("8:30 AM", style: Styles.headLineStyle4.copyWith(color: Colors.white,),),
                      )),
                      SizedBox(width: 24,),                
                      const Spacer(),
                      Text("23", style: Styles.headLineStyle3.copyWith(color:Colors.white ),)
                    ],
                  )
                ,
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                     SizedBox(
                      width: 100,
                      child: Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                    ),
                  ],
                )
                ],
              ),
          )
          ],
        ),
      ),
    );
  }
}