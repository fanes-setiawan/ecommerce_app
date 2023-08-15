import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: AppLogoSmall(),
        title: const Text("Cart"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            H6(title: "ITEMS", subtitle: "Clear Cart"),
            SizedBox(height: 15.0),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Container(
                    height: 96,
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 96.0,
                          height: 96.0,
                          decoration:  BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["photo"],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                              item["category"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                  "\$${item["price"]}",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "${item["discount_price"]}%",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  const Icon(
                                    MdiIcons.plusBox,
                                    color: Colors.grey,
                                    size: 28.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    MdiIcons.minusBox,
                                    color: Colors.grey,
                                    size: 28.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.delete,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: Row(
              children: [
               Container(
                  width: 100,
                  child: Text("Subtotal",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),
                Expanded(
                  child: Text("\$570",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),Container(
                  width: 100,
                  child: Text("3 Items",
                  style: TextStyle(
                  fontSize: 10.0,
                  ),
                  ),
                ),
                
                Container(
                  width: 24,
                ),
                 ],
                 ),
               ),
               SizedBox(height: 10),
               Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
              children: [
               Container(
                  width: 100,
                  child: Text("Shipping",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),
                Expanded(
                  child: Text("JNE Expres",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),Container(
                  width: 100,
                  child: Text("7-8 day",
                  style: TextStyle(
                  fontSize: 10.0,
                  ),
                  ),
                ),
                const Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ],
              ),
            ),
              SizedBox(height: 10),
               Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
              children: [
               Container(
                  width: 100,
                  child: Text("Voucher",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),
                Expanded(
                  child: Text("paypay",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),Container(
                  width: 100,
                  child: Text("20% off",
                  style: TextStyle(
                  fontSize: 10.0,
                  ),
                  ),
                ),
                const Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ],
              ),
            ),
              SizedBox(height: 10),
               Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
              children: [
               Container(
                  width: 100,
                  child: Text("Total",
                  style: TextStyle(
                  fontSize: 14.0,
                  ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Text("\$40",
                  style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Spacer(),
                
                Container(
                  width: 24,
                )
              ],
              ),
            ),
              ],
            ),
          ),
        
          QActionButton(label: "Payment", onPressed: (){}),
        ],
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
