import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/category_list_controller.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({Key? key}) : super(key: key);

  Widget build(context, CategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("CategoryList"),
        actions: const [],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15.0),
        itemCount: controller.categories.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.categories[index];
          return Container(
            clipBehavior: Clip.antiAlias,
            height: 130.0,
            margin: const EdgeInsets.only(
              bottom: 10.0,
            ),
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
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item["category_name"],
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${item["item_count"]}",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  State<CategoryListView> createState() => CategoryListController();
}
