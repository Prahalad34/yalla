import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {

  List data =[];
  var val1 = "Nation";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network('https://images.dog.ceo/breeds/bouvier/n02106382_590.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(data[5]['Nation'],style: TextStyle(fontSize: 20),),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text('17, HaHarash Kiryat Shalom,\n Tel Aviv- Yafo, Israel'),
              ),
              Divider(
                height: 20,
              ),
              Text('1 x Paneer Dum Biryani'),
              Text('1 x Veg Hyderabadi Dum Biryani'),
              Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your food is preparing'),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('₪200',style: TextStyle(fontSize: 20,color: Colors.black),),
                  )
                ],
              ),
              Divider(
                height: 20,
              )


            ],
          ),
        ),
      ),
    );
  }

  void getData() async {
    var uri = "https://datausa.io/api/data?drilldowns="+val1+"&measures=Population";
    final response = await http.get(Uri.parse(uri));
    debugPrint("Status code is: ${response.statusCode}");
    debugPrint("Status code is: ${response.statusCode}");

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        debugPrint(jsonData.toString());
        data = jsonData['data'];
      });
      debugPrint(data.length.toString());
    }
  }

}
