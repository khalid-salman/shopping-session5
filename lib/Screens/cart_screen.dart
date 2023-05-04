import 'package:flutter/material.dart';
import 'package:shoping/Model/product.dart';
import 'package:shoping/Screens/market_screen.dart';
import 'package:shoping/Screens/product_card_in_mycart_screen.dart';

import '../Model/appUser.dart';

class MyCartScreen extends StatefulWidget {
  final AppUser appUser;
  const MyCartScreen({Key? key, required this.appUser}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int numInCart = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: Colors.orange.shade900,
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MarketScreen()));},),
          backgroundColor: Colors.white10,
          title:  Text("My Cart", style: TextStyle(color: Colors.orange.shade900, fontSize: 25, fontWeight: FontWeight.normal),),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: widget.appUser.inCartProducts.map((p) => ProductCardInMyCartScreen(product: p, appUser: sampleAppUser,)).toList(),
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Divider(thickness: 2,),
              ),
              ElevatedButton(

                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                      backgroundColor: Colors.black, padding: const EdgeInsets.fromLTRB(20,12,20,12) ),

                  onPressed: (){

                  },
                  child: const Text("checkout",style: TextStyle(color: Colors.white, fontSize: 20, ))),

              const SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}