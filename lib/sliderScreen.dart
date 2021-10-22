import 'package:flutter/material.dart';
//import 'package:pikmee/screens/Channal_partner/consonents.dart';

int currentIndex = 0;
List cardList = [Item1(), Item2(), Item3(), Item4()];



class Item1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(


          image: DecorationImage(
            image: AssetImage("assets/Rectangle 23.png"),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}

class Item2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(
          image: AssetImage("assets/Rectangle 23.png"),
          fit: BoxFit.cover,
        ),


      ),

    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(
          image: AssetImage("assets/Rectangle 23.png"),
          fit: BoxFit.cover,

        ),


      ),
    );
  }
}

class Item4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(




        image: DecorationImage(
          image: AssetImage("assets/Rectangle 23.png"),
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}
