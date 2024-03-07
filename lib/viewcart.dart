import 'package:a/addaddress.dart';
import 'package:flutter/material.dart';
class viewcart extends StatefulWidget {
  const viewcart({super.key});

  @override
  State<viewcart> createState() => _viewcartState();
}

class _viewcartState extends State<viewcart> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilo By Biryani'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [

                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/Ellipse4.png'),
                                         ),
                     ),

                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text('Paneer Dum Biryani \n ₪100'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent)
                      ),
                      child: Center(child: Text(' - 1 +',style: TextStyle(color: Colors.redAccent),)),
                    ),
                  )


                  // Image.asset('assets/add.png'),


                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 160,top: 20,left: 10),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,top: 20),
                       child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avtar.png'),
                                         ),
                     ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text('Veg Hyderabadi Dum Biryani \n ₪120'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.redAccent)
                      ),
                      child: Center(child: Text(' - 1 +',style: TextStyle(color: Colors.redAccent),)),
                    ),
                  )
                  // Image.asset('assets/add.png'),


                ],
              ),
              Divider(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('+Add more items',style: TextStyle(fontSize: 20),),
              ),
              Divider(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Offers & Benefit',style: TextStyle(fontSize: 30),),
              ),


                     // Padding(
                     //    padding: const EdgeInsets.only(left: 30,right: 180,top: 10),
                     //    child: TextField(
                     //      decoration: InputDecoration(
                     //          border: OutlineInputBorder(),
                     //          hintText: 'YALLA40'
                     //
                     //      ),
                     //
                     //    ),
                     //  ),



              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                   height: 50,
                   width: 200,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.white
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20,top: 10),
                     child: Text('YALLA40'),
                   ),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.redAccent,
                        ),
                        child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),))),
                  ),


        ]
              ),


              Divider(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text('Bill details',style: TextStyle(fontSize: 20),),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 50,right: 30,left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Item total \n Subtotal \n Delivery fee | 0.5 kms \n GST \n Item discount \n Total',style: TextStyle(fontSize: 15),),
                    Text('2 \n ₪220 \n ₪10 \n ₪10 \n ₪40 \n ₪200'),
                  ],
                ),
             ),

              ElevatedButton(
                  onPressed: (){
                showModalBottomSheet(
                context: context,
                builder: (context) {
                 return SizedBox(
                 height: 100,
                 width: 450,
                 child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children:  <Widget>[
                   const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child:ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return SizedBox(
                                  height: 500,
                                  width: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Choose an delivery address',style: TextStyle(fontSize: 20) ,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 65),
                                              child: Icon(Icons.cancel,color: Colors.white,),
                                            ),
                                          ],
                                        ),

                                              Row(
                                               children: [
                                                 CircleAvatar(
                                                   radius: 20,
                                                   child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                 ),
                                                 Padding(
                                                   padding: const EdgeInsets.only(left: 5,top: 5),
                                                   child: Text('Home\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                 ),
                                                 Padding(
                                                   padding: const EdgeInsets.only(left: 10),
                                                   child: Image.asset('assets/arrow.png'),
                                                 )

                                                 // Icon(Icons.arrow_back_ios,color: Colors.white,),

                                               ],
                                             ),
                                        Divider(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text('Office\nLorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Image.asset('assets/arrow.png'),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text('Hotel\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Image.asset('assets/arrow.png'),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text('Other\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Image.asset('assets/arrow.png'),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text('Office\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Image.asset('assets/arrow.png'),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          height: 30,
                                        ),
                                        Text('+Add new address',style: TextStyle(color: Colors.redAccent,fontSize: 15),)





                                      ],
                                    ),
                                  ),
                                );
                              });
                        }, child: Container(
                        height: 40,
                          width: 100,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(12)),
                          //   border: Border.all(color: Colors.redAccent)
                          // ),
                          alignment: Alignment.center,
                          child: const Text('Select Address',style: TextStyle(color: Colors.redAccent),)),

                 ),
                    ),

                        SizedBox(height: 10,),

                             Padding(
                              padding: const EdgeInsets.only(left: 50,top: 10,),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => addaddress()));
                                },

                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  color: Colors.redAccent
                                ),
                               alignment: Alignment.center,

                                child: Text('Add Address',style: TextStyle(color: Colors.white),),
                              ),
                 )
                            ),




                  ]
                 )
                 );

                    });
                     }, child: null,

                  ),



            ],
          ),
        ),

        ),

    );
  }
}
