import 'package:flutter/material.dart';
import 'package:tickets/utilis/app_styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 400,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 350,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Color(0xFF687daf), // The desired color
                        BlendMode.srcIn, // This blend mode will replace the image color
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                        child: Image.asset(
                          "assets/hotel.jpeg",
                          fit: BoxFit.contain,
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text("Zvartnots Hotel", style: Styles.headLineStyle4.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),),
                  SizedBox(height: 5,),
                  Text("Yerevan", style: Styles.headLineStyle2.copyWith(color: Colors.grey[200])),
                  Text("€35/Night", style: Styles.headLineStyle4.copyWith(color: Colors.grey[200]),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
