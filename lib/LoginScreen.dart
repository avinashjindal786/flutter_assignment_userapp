import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_user/productshow.dart';
import 'package:flutter_assignment_user/registerScreen.dart';
//import 'package:userapp_flutter_assignment/screen/registerScreen.dart';

class LoginScrren extends StatefulWidget {
  const LoginScrren({Key? key}) : super(key: key);

  @override
  _LoginScrrenState createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 38.0,left: 10,right: 10,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0,bottom: 18),
                child: Text(" Login in to get started",style: TextStyle(color: Colors.black,fontSize: 25,),),
              ),
              Text("Experience the all new App!",style: TextStyle(color: Colors.black,fontSize: 25,),),
              SizedBox(height:
              30,),
              //textwidget(hint: "Name",type: TextInputType.text,image: 'assets/person-24px (1).png',),
              textwidget(hint: "E-mail ID",type: TextInputType.text,image: 'assets/email-24px.png',controller: email,),
              //textwidget(hint: "Phone",type: TextInputType.number,image: 'assets/phone-24px.png',),
              textwidget1(type: TextInputType.visiblePassword, image: "assets/Icon awesome-eye.png", hint: "password",image1: "assets/Icon ionic-ios-lock.png",controller: password,),
              //textwidget1(type: TextInputType.visiblePassword, image: "assets/Icon awesome-eye.png", hint: "Confirm password",image1: "assets/Icon ionic-ios-lock.png",),
              Padding(
                padding: const EdgeInsets.only(left: 178.0,top: 20),
                child: Text("Use Mobile Number",style: TextStyle(color: Color(0xfff3aa4e),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280.0),
                child: InkWell(
                  onTap: () async
                  {
                    try{
                      final existuser = await _auth.signInWithEmailAndPassword(email: email.text, password: password.text);
                      if(existuser != null)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProductScreen();
                        }));
                      }

                    }
                    catch(e)
                    {
                      print(e);
                    }


                  },
                  child: Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff3aa4e)
                    ),
                    child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25,),)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create account! ",style: TextStyle(color: Colors.black,fontSize: 15,),),
                  InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return RegisterScreen();
                        }));
                      },
                      child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class textwidget extends StatelessWidget {
  final String hint;
  final String image;
  final TextInputType type;
  final TextEditingController controller;
  textwidget({required this.type,required this.image,required this.hint,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: SizedBox(

            child: TextField(
              controller: controller,
              cursorColor: Colors.black,
              keyboardType: type,
              style: TextStyle(color: Colors.black,fontSize: 22,),
              decoration: new InputDecoration(

                  prefixIcon: Image.asset(image,scale: 0.6,),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: hint),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Divider(color: Colors.grey,thickness: 1,),
        )
      ],
    );
  }
}
class textwidget1 extends StatelessWidget {
  final String hint;
  final String image;
  String image1;
  final TextInputType type;
  final TextEditingController controller;
  textwidget1({required this.type,required this.image,required this.hint,required this.controller,required this.image1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: TextField(
            controller: controller,
            obscureText: true,
            cursorColor: Colors.black,
            keyboardType: type,
            style: TextStyle(color: Colors.black,fontSize: 22,),
            decoration: new InputDecoration(
                suffixIcon: Image.asset(image,scale: 0.6,),
                prefixIcon: Icon(Icons.lock,size: 30,),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: hint),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Divider(color: Colors.grey,thickness: 1,),
        )
      ],
    );
  }
}