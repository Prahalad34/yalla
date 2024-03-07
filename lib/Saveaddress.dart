import 'package:a/Placeorder.dart';
import 'package:flutter/material.dart';
class Saveaddress extends StatefulWidget {
  const Saveaddress({super.key});

  @override
  State<Saveaddress> createState() => _SaveaddressState();
}

class _SaveaddressState extends State<Saveaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

               Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.location_on,color: Colors.redAccent,),
                  ),
                  Text('Lorem ipsum dolor\nLorem ipsum dolor sit amet elit sed\n do eiusmod tempor',style: TextStyle(fontSize: 15),),

                ],
              ),


            Divider(
              height: 50,
            ),
            Text('Enter complete address',style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Save address as",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.redAccent
                    ) ,
                    child: Center(child: Text('Home',style: TextStyle(color: Colors.white),)),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white
                    ) ,
                    child: Center(child: Text('Office',style: TextStyle(color: Colors.black),)),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white
                    ) ,
                    child: Center(child: Text('Hotel',style: TextStyle(color: Colors.black),)),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white
                    ) ,
                    child: Center(child: Text('Other',style: TextStyle(color: Colors.black),)),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('Complete address',style: TextStyle(fontSize: 20),),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '  Behind mall, Rishon Lezion 987456, Israel'

                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Text('Floor',style: TextStyle(fontSize: 20),),
             ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ' 1'

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Nearby landmark',style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ' Lorem ipsum dolor sit amet'

                ),
              ),
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Placeorder()));
                },
            child:Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.redAccent
                ),
                child: Center(child: Text('Save Address',style: TextStyle(color: Colors.white),)),
              ),
            ))






          ],
        ),
      )
      ),
    );
  }
}
