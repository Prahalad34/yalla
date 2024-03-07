import 'package:flutter/material.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My-Profile'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/Profile.png'),

                ),

              ),
              Center(
                child: CircleAvatar(
                  radius: 15,
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.create,color: Colors.white,) ,

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Name',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Vinson Cooper'

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Text('Phone number',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' +972 89745 61230'

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Text('Email ID',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' vinsoncooper123@gmail.com'

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 50),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.redAccent
                  ),
                  child: Center(child: Text('Update profile',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              )

            ],
        ),
      ),
    );
  }
}
