import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pertemuan4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenis_kelamin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          // <Widget> [
            // const SizedBox(height: 20),
            // CustomTextField(Controller: username, label: "username", hint: "Masukkan Username"),
            // const SizedBox(height: 20),
            // CustomTextField(Controller: password, label: "Password", hint: "Masukkan Password")
            // const SizedBox(height: 20),


             const SizedBox(height: 20),
             CustomTextField(Controller: nama, label: "nama", hint: "masukkan nama"),
             const SizedBox(height: 20),
             CustomTextField(Controller: email, label: "email", hint: "masukkan email"),
             const SizedBox(height: 20),
             CustomTextField(Controller: umur, label: "umur", hint: "masukkan umur"),
             const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text("Pria"),
                  leading: Radio(
                    value: "Pria", 
                    groupValue: jenis_kelamin,
                     onChanged: (value){
                      setState(() {
                        jenis_kelamin = value;
                      });
                     }
                     ),
                ),
                ListTile(
                  title: Text("Wanita"),
                  leading: Radio(
                    value: "Wanita", 
                    groupValue: jenis_kelamin,
                     onChanged: (value){
                      setState(() {
                        jenis_kelamin = value;
                      });
                     }
                     ),
                ),

             ],)
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // print("username :  $(username.text)\npassword : $(password.text)");
                  // username.clear();
                  // password.cler();
                });
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
              child: const Text(
                'Login',
                style: TextStyle(color:Colors.black),
              ),
            ),

            
      //        SizedBox(
      //         width: 400,
      //         height: 200,
      //         child: TextField(
      //           controller: password,
      //           decoration: InputDecoration(
      //             hintText: "Masukkan password",
      //             labelText: "Password",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(radius)
      //             )
      //           ),
      //         ) ,
      //       ),
      //       ElevatedButton(
      //         onPressed: ,
      //       )
          ],
        ),
      ),
    );
  }
  
//   void setState(Null Function() param0) {}
 }