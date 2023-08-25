
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Image.asset(
            "assets/download.png",
          ),
          title: const Text('Profiles and more'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Users",
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: SquareAvatar(
                      size: 100,
                      backgroundImage: AssetImage('assets/basic.jpg'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: SquareAvatar(
                      size: 100,
                      backgroundImage: AssetImage('assets/basic red.jpg'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: SquareAvatar(
                      size: 100,
                      backgroundImage: AssetImage('assets/blue woman.jpg'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: SquareAvatar(
                      size: 100,
                      backgroundImage: AssetImage('assets/white panda.jpg'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: SquareAvatar(
                      size: 100,
                      backgroundImage: AssetImage('assets/yellow chick.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            // notification 
            const SizedBox(height: 50),
            Container(
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 51, 51, 51),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the icon and the text
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      
                      
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10),

            // mylist
            Container(
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 51, 51, 51),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the icon and the text
                  Text(
                    'My List',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      
                      
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10),

            // app setting
            Container(
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 51, 51, 51),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the icon and the text
                  Text(
                    'App settings',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      
                      
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10),
            //account

            Container(
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 51, 51, 51),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.account_box,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the icon and the text
                  Text(
                    'Account',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      
                      
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10),
            // help

            Container(
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 51, 51, 51),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the icon and the text
                  Text(
                    'Help',
                    style: TextStyle(fontSize: 20, color: Colors.white, ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      
                      
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
  width: 300,
  height: 100,
  child: const Padding(
    padding: EdgeInsets.only(left: 110, right: 110), 
    child: Text(
      "Sign Out",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ),
),

          ],
          

        ),
      ),
    );
  }
}

class SquareAvatar extends StatelessWidget {
  final double size;
  final ImageProvider<Object> backgroundImage;

  const SquareAvatar({super.key, 
    required this.size,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}