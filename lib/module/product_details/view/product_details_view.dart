import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_details_controller.dart';

class ProductDetailsView extends StatefulWidget {
  final Map item;

  const ProductDetailsView({Key? key, required this.item}) : super(key: key);

  Widget build(context, ProductDetailsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("ProductDetails"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["product_name"],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["category"],
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$ ${item["price"]}",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${item["discount_price"]} %",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 240.0,
                decoration: BoxDecoration(
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
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: QDropdownField(
                      label: "Colors",
                      validator: Validator.required,
                      items: [
                        {
                          "label": "White",
                          "value": 1,
                        },
                        {
                          "label": "Black",
                          "value": 2,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: QDropdownField(
                      label: "Size",
                      validator: Validator.required,
                      items: [
                        {
                          "label": "L",
                          "value": "L",
                        },
                        {
                          "label": "XL",
                          "value": "XL",
                        },
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                ],
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Text(
                item["description"],
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15.0),
        child: Wrap(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    MdiIcons.plusBox,
                    size: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "0",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Icon(
                    MdiIcons.minusBox,
                    size: 30.0,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: QButton(
                    label: "Wishlist",
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: QButton(
                    label: "Add to Cart",
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetailsView> createState() => ProductDetailsController();
}
