import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shoping/screen1.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 30,),

                SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network("https://th.bing.com/th/id/R.b667588b7aa776a5ba03db10bb1b28cc?rik=VVYsVX6qJcX45A&pid=ImgRaw&r=0")),

                const SizedBox(height: 30,),

                Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Email",
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),

                      ),
                    ),


                    const SizedBox(height: 30,),
                    //password text field
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.key),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 30,),

                ElevatedButton(
                  onPressed: (){if (kDebugMode) {
                    print("loggedin");
                    // Navigator.of(context).push(Screen1 as Route<Object?>);
                    Navigator.of(context).pop();
                  }},

                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child:const Text("Login") ,
                ),

                const SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text("Don't have an account?",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    TextButton(onPressed: (){},
                        child: const Text("Sign up",style: TextStyle(
                            fontSize: 20,
                            color: Colors.red
                        ),))
                  ],
                )

              ],

            ),
          ),
        ),
      ),
    );
  }
}