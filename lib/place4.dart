import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AlaiMinar(),
    );
  }
}

class AlaiMinar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/a1.jpg'))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 16),
//                    child: Icon(
//                      Icons.arrow_back,
//                      size: 30,
//                    ),
                  ),
//                  Padding(
//                    padding: const EdgeInsets.symmetric(vertical: 50),
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: Colors.white,
//                        borderRadius: BorderRadius.only(
//                          bottomLeft: Radius.circular(25),
//                          topLeft: Radius.circular(25),
//                        ),
//                      ),
//                      child: Padding(
//                        padding: const EdgeInsets.symmetric(
//                            horizontal: 30, vertical: 15),
////                        child: Icon(Icons.add_shopping_cart),
//                      ),
//                    ),
//                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, bottom: 60, left: 30),
                      child: Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Alai Minar',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Hero(
                                      tag: 'img1',
                                      child: Image(
                                          height: 90,
                                          image: AssetImage('assets/a1.jpg')),
                                    )
                                  ],
                                ),
                                Text(
                                  'New Delhi',
                                  style: TextStyle(fontSize: 24),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Text(
                                      'Alauddin Khalji started building the Alai Minar,\nafter he had doubled the size of Quwwat \nul-Islam mosque built before 1311AD. '),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    FlatButton(
                                      onPressed: () {
//                                        Navigator.push(
//                                          context,
//                                          MaterialPageRoute(
//                                              builder: (context) =>
//                                                  SecondRoute()),
//                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              Color.fromRGBO(130, 102, 117, 1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0, vertical: 10),
                                          child: Text(
                                            'Swipe For More ',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60, right: 20),
                      child: Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Alai Minar',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          height: 90,
                                          image: AssetImage('assets/a1.jpg')),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Text(
                                      'He conceived this tower to be two times higher \nthan Qutb Minar in proportion with the\nenlarged mosque.\n\nThe construction was however abandoned,\njust after the completion of the 24.5-metre-high'),
                                ),
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.end,
//                                  children: [
//                                    Text(
//                                      '\$399',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 25),
//                                    ),
//                                    SizedBox(
//                                      width: 100,
//                                    ),
//                                    Container(
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.circular(20),
//                                        color: Color.fromRGBO(130, 102, 117, 1),
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.symmetric(
//                                            horizontal: 25.0, vertical: 10),
//                                        child: Text(
//                                          'Buy',
//                                          style: TextStyle(
//                                              fontSize: 22,
//                                              color: Colors.white),
//                                        ),
//                                      ),
//                                    )
//                                  ],
//                                )
                              ],
                            ),
                          )),
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
