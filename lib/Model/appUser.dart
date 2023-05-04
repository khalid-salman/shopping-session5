
import 'package:shoping/Model/product.dart';

class AppUser
{
  String name;
  String id;
  List <Product> inCartProducts;
  AppUser({
    required this.name,
    required this.id,
    required this.inCartProducts,
  });
}

AppUser sampleAppUser = AppUser(name: "Mohamed", id: "User1", inCartProducts: []);