import 'package:a/restaurantdetails.dart';
import 'package:flutter/material.dart';
class ItemData {
  final String imagePath;
  final String text;

  ItemData({required this.imagePath, required this.text});



}
class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  List<ItemData> datalist = [
    ItemData(imagePath: 'assets/biryanibykilo.png', text: 'Biryani By Kilo',),
    ItemData(imagePath: 'assets/apna.png', text: 'Apna Sweets'),
    ItemData(imagePath: 'assets/biyanionwheels.png', text: 'Biryani on Wheels'),
    ItemData(imagePath: 'assets/hotel.png', text: '  Hotel Madni Darbar'),
    ItemData(imagePath: 'assets/dum.png', text: 'Dum Safar Biryani'),
    ItemData(imagePath: 'assets/biryanion.png', text: 'Biryani By Kilo'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biryani',style: TextStyle(height: 20,fontSize: 20),),
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      )
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All Restaurants Delivering Biryani',style: TextStyle(fontSize: 20),),
            // SizedBox(height: 1300,


            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: datalist.length,
              itemBuilder: (BuildContext context , int index){
                ItemData item = datalist[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => restaurantdetails()));

                  },

                child: Container(
                    margin: EdgeInsets.only(right: 20,top: 10),
                    child: Stack(
                        children: [
                          Image.asset(
                            item.imagePath,
                            height: 100,
                            width: 100,
                            
                          ),
                              Padding(
                                padding: const EdgeInsets.only(left: 75),
                                child: Icon(Icons.favorite_border,color: Colors.white,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 50,left: 20),
                                 child: Text('50%OFF\nup to ₪100',style: TextStyle(color: Colors.white),),
                               ),


                              Column(
                              children: [
                                SizedBox(height: 10),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 30),
                                   child: Text(item.text,style: TextStyle(fontSize: 20),),
                                 ),

                                Row(
                                  children: [

                                      Padding(
                                        padding: const EdgeInsets.only(left: 120),
                                        child: Icon(Icons.stars,color: Colors.yellow   ,),
                                      ),

                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text('4.2 • 40 mins'),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Text('17, HaHarash Kiryat Shalom Tel Aviv \nYafo Tel Aviv District '),
                                ),

                              ],
                                                       ),



                        ]  )
                ));

              },
            )
            ],
        ),

      ),

      ));
  }

  }