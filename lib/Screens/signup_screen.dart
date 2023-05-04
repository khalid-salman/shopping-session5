import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        hintText: "Username",
                        labelText: "Username",
                        prefixIcon: const Icon(Icons.email),

                      ),
                    ),

                    const SizedBox(height: 30,),


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
                    print("signing up");
                  }},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child:const Text("SignUp") ,
                ),

                const SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text("Already have an account?",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    TextButton(onPressed: (){},
                        child: const Text("Sign In",style: TextStyle(
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