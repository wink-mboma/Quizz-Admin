import 'package:admin/responsive.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:admin/screens/main/question.dart';
import 'package:admin/screens/main/subject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class LoginDashboard extends StatefulWidget {
  const LoginDashboard({Key? key}) : super(key: key);

  @override
  _LoginDashboardState createState() => _LoginDashboardState();
}

class _LoginDashboardState extends State<LoginDashboard> {
  @override

  late bool passwordVisible;
  void initState(){
    super.initState();
    passwordVisible = true;
  }
  Widget build(BuildContext context) {
    return Container(

      width: 300,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: bgColor,

        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),



      child: new ListView(
          children: <Widget>[
            Column(

                children: <Widget>[

                  SizedBox(height: 150,),


                  Container(

                    width: 700,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),

                        Text('Sygne Admin Signin',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Amsterdam",

                          ),

                        ),


                        Image.asset('assets/images/Logo1.png',
                          height: 100,
                        ),
                        Container(width: 400,
                            margin: const EdgeInsets.all(0.0),
                            child: TextField(


                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                fillColor: secondaryColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                /*  prefixIcon: Icon(Icons.lock_outlined,
                                  size: 15,

                                ),*/

                                suffixIcon: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(defaultPadding * 0.75),
                                    margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                                    decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: SvgPicture.asset("assets/icons/.svg"),
                                  ),
                                ),


                              ),
                              //controller: email,
                            )
                        ),

                        SizedBox(height:20,),

                        Container(width: 400,
                            margin: const EdgeInsets.all(0.0),


                            child: TextField(

                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                fillColor: secondaryColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                              /*  prefixIcon: Icon(Icons.lock_outlined,
                                  size: 15,

                                ),*/

                                suffixIcon: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(defaultPadding * 0.75),
                                    margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                                    decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: SvgPicture.asset("assets/icons/.svg"),
                                  ),
                                ),


                              ),
                            )
                        ),

                        SizedBox(height: 20,),
                        GestureDetector(

                          onTap:(){

                            Navigator.push(context, MaterialPageRoute(

                                builder: (context)=>

                                    MainScreen()
                            )

                            );


                          },
                          child:Container(
                            alignment: Alignment.center,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF2697FF),
                                      Color(0xFF2697FF),
                                      Color(0xFF2697FF),
                                    ])

                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text('Sign In',

                                style: TextStyle(color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                            ),
                          ),),
                        SizedBox(height: 20,),
                      ],

                    ),


                  ),

                ]

            )

          ]

      ),

    );
  }
}
