import 'package:flutter/material.dart';
class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment              1item | ₪100',style: TextStyle(fontSize: 20),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
      body:SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Biryani By Kilo | Delivery in 40 mins'),
              Image.asset('assets/Line.png'),
              Text('Home | Lorem ipsum dolor sit amet elit sed eiusmod...'),
              Divider(
                height: 40,
              ),
              Text('Payment method',style: TextStyle(fontSize: 25),),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit/Debit Card'),
                    Icon(Icons.radio_button_checked,color: Colors.redAccent,),
                  ],
                ),
              ),
              Text('7894 5612 3078 ****'),
              Divider(
                height: 40,
              ),
              Text('+Add new card',style: TextStyle(color: Colors.redAccent),),
              Divider(
                height: 40,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Google Pay'),
                 Icon(Icons.radio_button_unchecked,)
               ],
             ),
              Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Apple Pay'),
                  Icon(Icons.radio_button_unchecked)
                ],
              ),
              Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cash on Delivery'),
                  Icon(Icons.radio_button_unchecked)
                ],
              ),
              Divider(
                height: 40,
              ),
              

            ],

          ),
        ),
      ),

    );
  }
}


