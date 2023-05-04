import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping/Screens/product_details_screen.dart';
import 'Model/appUser.dart';
import 'Model/product.dart';




class ProductCard extends StatefulWidget {
  Product product;
  final AppUser appUser;

  ProductCard({Key? key, required this.product, required this.appUser}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>  (ProductDetailsScreen(product: widget.product, appUser: sampleAppUser,)),
            ),
          );
        },
        child: Card(

          child: SizedBox(
            width: 160,
            height: 270,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      color: Colors.grey[100],

                      height: 140,
                      child: Image.network(widget.product.imageURL,),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Text(widget.product.name, style: const TextStyle(fontSize: 15),),

                  const SizedBox(height: 10,),


                  RatingBarIndicator(
                    rating: widget.product.rating,
                    itemCount: 5,
                    itemSize: 15.0,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, _) =>
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${widget.product.price}", style: const TextStyle(fontSize: 15,),),
                      InkWell(child: const Icon(Icons.shopping_cart,  color: Colors.deepOrange, size: 15,),
                        onTap: (){
                          widget.appUser.inCartProducts.add(widget.product);
                        }
                        ,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}