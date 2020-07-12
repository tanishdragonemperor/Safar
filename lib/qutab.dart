import 'package:flutter/material.dart';

class QutabMinarPage extends StatelessWidget {
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
                      fit: BoxFit.cover, image: AssetImage('assets/q1.jpg'))),
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
                                      'Qutub minar',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Hero(
                                      tag: 'img1',
                                      child: Image(
                                          height: 90,
                                          image: AssetImage('assets/Q3.jpg')),
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
                                      'Standing tall at 73 m, the Qutub Minar is the \ntallest brick minaret in the world. It is also a\nUNESCO World Heritage Site.\nWhich will fit in any elegant interior'),
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
                                      'Qutub Minar',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          height: 90,
                                          image: AssetImage('assets/Q3.jpg')),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Text(
                                      'It is considered to be the Tower of Victory, built \nby Qutubuddin Aibak in the 12th century to \nmark the end of rule by the last Hindu Kingdom\n\nThere are 379 stairs inside the minaret to reach the\ntop'),
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
