import 'package:flutter/material.dart';
import 'package:myfierstapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name;
  bool changeButton=false;
  final _formkey= GlobalKey<FormState>();

  moveToHome(BuildContext context)async{ 
          if(_formkey.currentState!.validate()){
          await Future.delayed(Duration(seconds: 1));
           Navigator.pushNamed(context, MyRoutes.homeRoute);
           setState(() {
           changeButton=true;
           });
          }
              
          }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
                      child: Column(
              children: [
                Image.asset(
                  "assets/images/loginimg.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Welcome Developer $name"),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "User Name can't be empty";
                          }
                          else if(value.length<6){
                            return "Username Length Should be Atleast 6";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password Can't be empty";
                          }
                          else if(value.length<6){
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      // ),
                      InkWell(
                        onTap: () =>moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton? 50 : 150,
                          height: 50,
                          
                          alignment: Alignment.center,
                          child: changeButton? Icon(Icons.done, color: Colors.white,): Text("Login"),
                          decoration: BoxDecoration(
                            shape: changeButton ? BoxShape.circle: BoxShape.rectangle,
                            // borderRadius: BorderRadius.circular(changeButton? 20: 8),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
