import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_assignment_user/sliderScreen.dart';
//import 'package:userapp_flutter_assignment/screen/sliderScreen.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.6,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,

                          ),
                          child: CarouselSlider(

                            options: CarouselOptions(
                              height: MediaQuery.of(context).size.height*0.5,
                              autoPlay: true,
                              viewportFraction: 1,
                              autoPlayInterval: Duration(seconds: 4),
                              autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                              autoPlayCurve: Curves.easeIn,
                              pauseAutoPlayOnTouch: true,
                              aspectRatio: 16/9,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            ),
                            items: cardList.map((card) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: MediaQuery.of(context).size.width *
                                            0.0),
                                    child: card,
                                  ),
                                );
                              });
                            }).toList(),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: cardList.map((url) {
                              int index = cardList.indexOf(url);
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == index
                                      ? Colors.blue
                                      : Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          right: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [BoxShadow(
                            color: const Color(0xFF000000),
                              offset: Offset.zero,
                              blurRadius: 0.1,
                              spreadRadius: 0.1
                                )]
                            ),
                            child: IconButton(
                              onPressed: () {
                                //Navigator.pop(context);
                              },
                              icon: Image.asset('assets/Icon ionic-ios-heart.png'),
                              color: Colors.white,
                              iconSize: 24,
                            ),
                          ),),
                        Positioned(
                          top: 130,
                          right: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [BoxShadow(
                                    color: const Color(0xFF000000),
                                    offset: Offset.zero,
                                    blurRadius: 0.1,
                                    spreadRadius: 0.1
                                )]
                            ),
                            child: IconButton(
                              onPressed: () {
                                //Navigator.pop(context);
                              },
                              icon: Image.asset('assets/Icon awesome-share.png'),
                              color: Colors.white,
                              iconSize: 26,
                            ),
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Eyevy",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 25,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18),
                    child: Text("Full Rim Round, Cat-eyed Anti Glare Frame",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 25,fontWeight: FontWeight.w400),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text("₹219",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 0,top: 18),
                        child: Text("₹999",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 27,fontWeight: FontWeight.w300,decoration:
                        TextDecoration.lineThrough,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 0,top: 18),
                        child: Text("78% off",style: TextStyle(color: Colors.green.withOpacity(0.8),fontSize: 27,fontWeight: FontWeight.w300,),),
                      ),
                    ],
                  ),
                  SizedBox(height: 45,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: const Color(0xFF000000),
                                offset: Offset(2,2),
                                blurRadius: 4,
                                spreadRadius: 1
                            )]
                        ),
                        child: Center(
                          child: Text("ADD TO CART",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                        )
                      ),

                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(
                              color: Color(0xfff3aa4e),
                              boxShadow: [BoxShadow(
                                  color: const Color(0xFF000000),
                                  offset: Offset.zero,
                                  blurRadius: 0.9,
                                  spreadRadius: 0.1
                              )]
                          ),
                          child: Center(
                            child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
