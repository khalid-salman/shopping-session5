import 'package:flutter/material.dart';
import 'package:shoping/Screens/cart_screen.dart';

import '../Model/appUser.dart';
import '../Model/product.dart';

class ProductCardInMyCartScreen extends StatefulWidget {
  final Product product;
  final AppUser appUser;
  const ProductCardInMyCartScreen({Key? key, required this.product, required this.appUser}) : super(key: key);

  @override
  State<ProductCardInMyCartScreen> createState() => _ProductCardInMyCartScreenState();
}

class _ProductCardInMyCartScreenState extends State<ProductCardInMyCartScreen> {
  int numInCart = 1;
  @override
  Widget build(BuildContext context) {
    return    Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 70,
                height: 80,
                child: Center(
                  child: Container(
                    color: Colors.grey[100],
                    height: 80,
                    child: Image.network(widget.product.imageURL,),
                  ),
                )
            ),

            const SizedBox(width: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product.name, style: const TextStyle(fontSize: 20),),
                const SizedBox(height: 10,),
                Text("EGP${widget.product.price}", style: const TextStyle(fontSize: 15),),
              ],
            ),
            const SizedBox(width: 20,),


            Column(
              children: [
                Container(
                  width: 80,
                  height: 40,
                  // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                    // color: regularColor,
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(50)),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[

                      GestureDetector(child: const Text("-",style: TextStyle(color: Colors.black, fontSize: 15),),
                        onTap: (){
                          setState(() {
                            if(numInCart>0) {
                              numInCart--;
                            }
                            else if (numInCart == 0)
                            {
                              setState(() {
                                widget.appUser.inCartProducts.remove(widget.product);
                                //No, let's refresh the current page (please be careful, when used wrong, this might mis-up the context stack (stack of screens))
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyCartScreen(appUser: sampleAppUser) ),
                                      (
                                      Route<dynamic> route) => false,
                                );
                              });
                            }
                          });

                        },
                      ),
                      Text("$numInCart", style: const TextStyle(color: Colors.black, fontSize: 15)),

                      GestureDetector(child: Text("+",style: TextStyle(color: Colors.black, fontSize: 15),),
                        onTap: (){
                          setState(() {
                            numInCart++;
                          });
                        }
                        ,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}