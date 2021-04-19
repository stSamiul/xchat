import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xchat/inside/widgets/widget.dart';
import 'package:xchat/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isLoading= false;
  AuthMethods authMethods=new AuthMethods();

  final formKey= GlobalKey<FormState>();
  TextEditingController userNameTxtE = new TextEditingController();
  TextEditingController emailTxtE = new TextEditingController();
  TextEditingController passwordTxtE = new TextEditingController();

  SignMeUp(){
    if(formKey.currentState.validate()){
      setState(() {
              isLoading=true;
            });

      authMethods.sgnUpWithmailandPas(emailTxtE.text ,
       passwordTxtE.text).then((val) {
         print("$val");
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading? Container(
        child: Center(child: CircularProgressIndicator()),
      ):SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-100,
          alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ///txt field for signup page
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                  ///USER NAME FIELD
                  TextFormField(
                    validator: (val){
                      return val.isEmpty || val.length<12 ? "invalid user name":null;
                    },
                    controller: userNameTxtE,
                      style: simpleTextStyle(),
                      decoration: signinInput("User Name")),
                  ///Email area
                  TextFormField(
                    validator: (val){
                      return RegExp
                      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val)?null:
                       "Provide a emailid";
                    },
                    controller: emailTxtE,
                      style: simpleTextStyle(),
                      decoration: signinInput("email or number")),
                  ///pasword area
                  TextFormField(
                    obscureText: true,
                    validator: (val){
                      return val.length>6?null:"provide atlist 6 character";
                    },
                    controller: passwordTxtE,
                      style: simpleTextStyle(),
                      decoration: signinInput("password")),
                    ],
                  ),
                ),
                ///for space.Work like a line breaker
                SizedBox(
                  height: 8,
                ),
                ///FORGETpassword desing
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text("Forgot pasword", style: simpleTextStyle()),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ///GESTUREDETECTOR can turn anything into button even image or text
                GestureDetector(
                  onTap: (){
                    SignMeUp();
                    ///button work
                  
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Sign Up With Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Allready have account? ",
                      style: simpleTextStyle(),
                    ),
                    Text(
                      "SignIn now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 120)
              ],
            )),
      ),
    );
      
    
  }
}