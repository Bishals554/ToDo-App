import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEEEFF5),
          elevation: 0,
          centerTitle: true,
          title: Text('Profile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        body: Container(
          color: Color(0xFFEEEFF5),
          child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                child: Image.network(
                  "https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/76954525_925742791159555_7862822205317447680_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kqD4xxUIKBkAX9gXbLe&_nc_ht=scontent.fktm6-1.fna&oh=00_AfBMMb-IdFBfElln6HgZHsx6oskMxRi2ikMPu85X8QukeQ&oe=63B3F831",
                  height: 200,
                  width: 200,
                ))),
            SizedBox(height: 50),
            Text(
              'Name: Bishal Shrestha',
              style: TextStyle(
                  fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Address: Bhaktapur Nepal', style: TextStyle(fontSize: 19),),
            SizedBox(height: 5,),
            Text('Email: bishals554@gmail.com', style: TextStyle(fontSize: 19),),
            SizedBox(height: 250,),
            Text('Develop By: Bishal Shrestha')
            ],
        ),
      ),
    ),
    );
  }
}
