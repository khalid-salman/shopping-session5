import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping/Model/appUser.dart';

import '../Model/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  final AppUser appUser;

  const ProductDetailsScreen(
      {Key? key, required this.product, required this.appUser})
      : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int numInCart = 0;
  bool addedToFavorite = false;
  Color favColor = Colors.orange.shade200;
  Color regularColor = Colors.orange.shade100;
  double _selectedSize = 38.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white10,
              elevation: 0,
//          title: Text(widget.product.name, style: const TextStyle(color: Colors.black),),

              leading: BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 300,
                        child: Image.network(widget.product.imageURL),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.orange.shade900,
                          child: Text(
                            " EGP${widget.product.price} ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 90,
                            height: 60,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              border: Border.all(
                                  width: 2, color: Colors.transparent),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange.shade900,
                                ),
                                Text(
                                  "${widget.product.rating}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.orange.shade900,
                                  ),
                                ),
                              ],
                            )),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  addedToFavorite = !addedToFavorite;
                                  if (addedToFavorite) {
                                    setState(() {
                                      widget.appUser.inCartProducts
                                          .add(widget.product);
                                    });
                                  } else {
                                    setState(() {
                                      widget.appUser.inCartProducts
                                          .remove(widget.product);
                                    });
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color:
                                  addedToFavorite ? favColor : regularColor,
                                  border: Border.all(
                                      width: 2, color: Colors.transparent),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: Icon(
                                  addedToFavorite
                                      ? Icons.star
                                      : Icons.star_border_outlined,
                                  size: 30,
                                  color: Colors.orange.shade900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "  ${widget.product.name}",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                                //     const SizedBox(height: 10),
                                //  Text("\$${widget.product.price}", style: const TextStyle(color: Colors.black, fontSize: 15),),

                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),

                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      for (double size = 38.0; size <= 45.0; size += 1.0)
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedSize = size;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 56.0,
                                            height: 56.0,
                                            margin: EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              color: _selectedSize == size ? Colors.blue : Colors.grey,
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: Text(
                                              '${size.toInt()}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 350,
                                  child: ExpansionTile(
                                    title: const Text("Description",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18)),
                                    children: [
                                      Text(
                                        widget.product.about,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 350,
                                  child: ExpansionTile(
                                    title: const Text("Return policy",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18)),
                                    children: [
                                      Text(
                                        widget.product.returnPolicy,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //add and minus widget (container)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 175,
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          decoration: BoxDecoration(
                            // color: regularColor,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (numInCart > 0) {
                                      numInCart--;
                                    }
                                  });
                                },
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              Text("$numInCart",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    numInCart++;
                                  });
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: Colors.black,
                                padding:
                                const EdgeInsets.fromLTRB(20, 12, 20, 12)),
                            onPressed: () {
                              setState(() {
                                widget.appUser.inCartProducts
                                    .add(widget.product);
                              });
                            },
                            child: const Text(
                              "add to cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}