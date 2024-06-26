import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_layout.dart';

class AppTicketsTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  FittedBox(
            child:  Container(
            child: Row(
              children: [
                // Airline Tickets
                Container(
                  width: size.width*.44,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Center(child: Text(firstTab, style: TextStyle(fontSize: 17),),)
                )
                
                //Hotels
                
                ,Container(
                  width: size.width*.44,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                    color: Colors.grey.shade100,
                  ),
                  child: Center(child: Text(secondTab, style: TextStyle(fontSize: 17),),)
                )
              ],
            ),
             decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF4F6F0),
                  ),
          ),
    );
  }
}