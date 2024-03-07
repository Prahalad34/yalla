import 'package:a/Payment.dart';
import 'package:flutter/material.dart';
class Placeorder extends StatefulWidget {
  const Placeorder({super.key});

  @override
  State<Placeorder> createState() => _PlaceorderState();
}

class _PlaceorderState extends State<Placeorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
             onPressed: () {
             Navigator.pop(context);
           },
          )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         Text('Biryani By Kilo | Delivery in 40 mins',style: TextStyle(fontSize: 15),),
            Image.asset('assets/Line.png'),
            Text('Home | Lorem ipsum dolor sit amet elit sed eiusmod...'),
            Divider(
              height: 40,
            ),
            Text('Biryani By Kilo',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/Ellipse4.png'),
                  ),
                  Text('Paneer Dum Biryani\n ₪100'),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.redAccent)
                      ),
                      child: Text('  - 1 + ',style: TextStyle(color: Colors.redAccent),),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/avtar.png'),
                  ),
                  Text('Veg Hyderabadi Dum Biryani \n₪120'),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent)
                      ),
                      child: Text('  - 1 + ',style: TextStyle(color: Colors.redAccent),),
                    ),
                  ),

                ],
              ),
            ),
            Divider(
              height: 30,
            ),
            Text('Bill details',style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item total\n Subtotal\n Delivery fee | 0.5 kms\n GST \nItem discount\n Total'),
                  Text('2 \n₪220\n ₪10 \n₪10\n ₪40\n ₪200')
                ],
              ),
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
                },
           child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.redAccent
                ),
                child: Center(child: Text('Place order',style: TextStyle(color: Colors.white),)),
              ),
            ))

          ],
        ),
      ),
    );
  }
}
