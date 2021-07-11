import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key key}) : super(key: key);
  var emailController = TextEditingController();
  var passController = TextEditingController();
 void ShowPremition(){
    if(emailController =='sayed616@gmail.com'){
      if(passController == 16061666){
        print('This account is premit to Login ');
      }
      else{
        print('password is no\'t vaild ');
      }
    }
    else{
      print('Please Enter Correct Email');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premition Logen '),
        actions: [
          IconButton(icon: Icon(Icons.notification_important_outlined), onPressed:null),
        ],
      ),

      body:  Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Login',style: TextStyle
                  (
                    fontSize: 20.0,fontWeight: FontWeight.bold
                ),
                ),
             SizedBox(height: 20.0,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Mail ',
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_rounded),
                    suffixIcon: Icon(Icons.adb_rounded),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                 // onFieldSubmitted: ( String val){print ('Your Email : $val');},

                ),
                SizedBox(height:20.0),
                TextFormField(
                  decoration:InputDecoration(
                    hintText:'Enter Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(7.0)),),
                    prefixIcon: Icon(Icons.lock_open_sharp),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),

                  ),
                  keyboardType:TextInputType.visiblePassword,
                  obscureText:true,
                  controller:passController,
                 // onFieldSubmitted: (var pas){print('your Password : $pas');},
                ),
                SizedBox(height:20.0),
                Container(
                  color: Colors.indigo,
                  child: MaterialButton(onPressed:ShowPremition,
                    child:Text(
                      'LOGIN',style: TextStyle(
                        fontSize:30.0,color: Colors.white,
                    ),
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have anacount ?',),
                    TextButton(onPressed: (){}, child: Text('RegisterNow'),),
                  ],

                ),


              ],

            ),
          ),


    );
  }
}
