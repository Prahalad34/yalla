import 'package:a/Profile.dart';
import 'package:a/category.dart';
import 'package:flutter/material.dart';
class ItemData {
  final String imagePath;
  final String text;

  ItemData({required this.imagePath, required this.text});



}
 class ItemDa {
   final String imagePath1;
   final String text1;

  ItemDa({required this.imagePath1, required this.text1});

  }




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();


  List<ItemData> datalist =[
    ItemData(imagePath: 'assets/North.png', text: 'Thali' ),
    ItemData(imagePath: 'assets/biryani.png', text: 'Biryani'),
    ItemData(imagePath: 'assets/burger.png', text: 'Burger'),
    ItemData(imagePath: 'assets/pngimg.png', text: 'Pizza')
  ];
  List<ItemDa> itemlist = [
    ItemDa(imagePath1: 'assets/chinese.png', text1: 'Chinese'),
   ItemDa (imagePath1: 'assets/cake.png', text1: 'Cake'),
    ItemDa(imagePath1: 'assets/paneer.png', text1: 'Paneer'),
    ItemDa(imagePath1: 'assets/sandwich.png', text1: 'Sandwich')

  ];
  List<ItemDat> itemlisttop = [
    ItemDat(imagePath2: 'assets/Group30.png', text2: 'Biryani By Kilo \n 4.1 • 40 mins' ),
    ItemDat (imagePath2: 'assets/Group31.png', text2: 'Apna Sweets \n 4.2 • 40 mins'),
    ItemDat(imagePath2: 'assets/Group32.png', text2: 'Biryani By Kilo \n 4.4 • 40 mins'),


  ];
  List<ItemCount> itemlistcount = [
    ItemCount(imagePath3: 'assets/Rectangle20.png', text3: 'Biryani By Kilo \n 4.1 • 40 mins' ),
    ItemCount(imagePath3: 'assets/Rectangle21.png', text3: 'Biryani By Kilo \n 4.1 • 40 mins'),
    ItemCount(imagePath3: 'assets/Rectangle22.png', text3: 'Biryani By Kilo \n 4.1 • 40 mins'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Vector.png', height: 20, width: 20),
                        const Text('17 Saharov St',
                            style: TextStyle(fontSize: 20)),
                        Image.asset('assets/Vector1.png',
                            height: 20, width: 20),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                          },
                        child:Padding(
                          padding: const EdgeInsets.only(
                            left: 150,
                          ),
                          child: Image.asset(
                            'assets/Ellipse.png',
                            height: 40,
                            width: 50,
                          ),
                        ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text('Behind mall, Rishon Lezion 987456, Israel'),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 30, top: 20),
                        child: TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search Food',
                          prefixIcon: Icon(Icons.search),
                        ))),
                    const Text(
                      'Recommended for you',
                      style: TextStyle(height: 4, fontSize: 20),

                    ),
                    // SizedBox(
                    //   height: 300,
                       GridView.builder(
                        shrinkWrap: true,
                          physics:  NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 4/ 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            // maxCrossAxisExtent: ,
                            // // crossAxisCount: 2,
                            // childAspectRatio: 0.5/0.5,
                            // crossAxisSpacing: 3,
                            // mainAxisSpacing: 3,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),

                              child: Stack(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 90),
                                     child: Image.asset('assets/Rectangle17.png',height:150,width: 80,),
                                   ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40,left: 13),
                                    child: Text('50% OFF\nup to ₪40',style: TextStyle(color: Colors.white),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: Column(
                                      children: [
                                        Text('Delectable'),
                                        Text('Delights - S...'),
                                        Text('North Indian'),
                                        // Image.asset('assets/Vector3.png'),
                                        Text('45-55 min')
                                      ],
                                    ),
                                  ),

                                ],
                              ),


                            );
                          }),


          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text('What’s on your mind?', style: TextStyle(height: 4, fontSize: 20),),
          ),

           SizedBox(
              height: 140,
                     child:ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: datalist.length,
                        itemBuilder: (BuildContext context , int  index){
                          ItemData item = datalist[index];
                          return Container(
                              margin: EdgeInsets.all(8),
                          child: Column(
                          children: [
                          Image.asset(
                          item.imagePath,
                          height: 60,
                          width: 80,
                          ),
                            SizedBox(height: 20),
                            Text(item.text)

                          ]  )
                          );
                        }
                      ),
           ),

                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                        shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: itemlist.length,
                          itemBuilder: (BuildContext context , int  index){
                            ItemDa ite = itemlist[index];

                            return Container(
                                margin: EdgeInsets.only(bottom: 50,),
                                child: Column(
                                    children: [
                                      Image.asset(
                                        ite.imagePath1,
                                        height: 50,
                                        width: 100,
                                      ),
                                      SizedBox(height: 20),
                                      Text(ite.text1),


                                    ]
                                ),
                              
                            );
                          }
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Top rated near you',style: TextStyle(fontSize: 20),),
                  ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: itemlisttop.length,
                          itemBuilder: (BuildContext context , int  index){
                            ItemDat it = itemlisttop[index];
                            return InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => category()));

                                },

                            child: Container(
                              margin: EdgeInsets.only(),
                              child: Column(
                                  children: [
                                    Image.asset(
                                      it.imagePath2,
                                      height: 100,
                                      width: 130,
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,),
                                          child: Icon(Icons.stars,color: Colors.yellow,),
                                        ),
                                        Text(it.text2),

                                      ],
                                    ),


                          ]  )
                            )
                         );




     }
              )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text('500 restaurants to explore',style: TextStyle(fontSize: 20),),
                    ),
    // SizedBox(
    // height: 800,
     ListView.builder(
    // scrollDirection: Axis.horizontal,
      shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: itemlistcount.length,
    itemBuilder: (BuildContext context , int  index) {
      ItemCount i = itemlistcount[index];
      return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  i.imagePath3,
                  height: 180,
                  width: 350,
                ),
                // SizedBox(height: 10),

                    // Text(i.text3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 35),
                         child: Text('Biryani By Kilo',style: TextStyle(fontSize: 20),),
                       ),

                           Padding(
                             padding: const EdgeInsets.only(left: 50),
                             child: Icon(Icons.stars,color: Colors.yellow,),
                           ),
                        Text('4.1 • 40 mins')

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text('13, HaDuchifat'),
                )



              ])
      );
    }
    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black
                        ),
                        child: Center(child: Text('2 item | ₪100\nCheckout',style: TextStyle(color: Colors.white),)),

                      ),
                    )
]
    )

    )
        )
    );
  }
}
class ItemDat {
  final String imagePath2;
  final String text2;

  ItemDat({required this.imagePath2, required this.text2});

}
class ItemCount {
  final String imagePath3;
  final String text3;

  ItemCount({required this.imagePath3, required this.text3});

}
