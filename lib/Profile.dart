import 'package:a/MyOrder.dart';
import 'package:a/MyProfile.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [

                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/Profile.png'),
                  ),
                ),
                 Text('Vinson Cooper',style: TextStyle(fontSize: 25),),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
              },
           child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.account_circle,color: Colors.redAccent,),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text('My Profile'),
                  ),
                  Image.asset('assets/arrow.png')
                  // Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)

                ],
              ),
            ),),
            Divider(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrder()));
              },
            child:Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.shopping_bag_rounded,color: Colors.redAccent,),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text('My Order'),
                  ),
                  Image.asset('assets/arrow.png')

                ],
              ),
            ),),
            Divider(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite,color: Colors.redAccent,),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text('Favorite'),
                  ),
                  Image.asset('assets/arrow.png')

                ],
              ),
            ),
            Divider(
              height: 40,
            ),

               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.history,color: Colors.redAccent,),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text('History'),
                  ),
                  Image.asset('assets/arrow.png')

                ],
              ),
            Divider(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.policy_outlined,color: Colors.redAccent,),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text('Privacy Policy'),
                ),
                Image.asset('assets/arrow.png')

              ],
            ),
            Divider(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.contact_emergency,color: Colors.redAccent,),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text('Contact Us'),
                ),
                Image.asset('assets/arrow.png')

              ],
            ),
            Divider(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.logout,color: Colors.redAccent,),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text('Logout'),
                ),
                Image.asset('assets/arrow.png')

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset('assets/ya.png'),
            )







          ],
        ),
      ),
    );
  }
}
