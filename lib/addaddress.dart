

import 'package:a/Saveaddress.dart';
import 'package:flutter/material.dart';
class addaddress extends StatefulWidget {
  const addaddress({super.key});

  @override
  State<addaddress> createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add'),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/map1.png',),

                               InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Saveaddress()));
                                 },
                              child: Padding(
                                 padding: const EdgeInsets.only(top: 40),
                                 child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 180,
                                      width: 360,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: Colors.white
                                      ),
                                      child: Container(
                                        height: 50,
                                        width: 316,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.redAccent
                                        ),
                                      )
                                    ),
                                  ],
                                 ),
                               ),
                               )


                          
                        ],
     
      
      ),
      ),

    );
  }
}
