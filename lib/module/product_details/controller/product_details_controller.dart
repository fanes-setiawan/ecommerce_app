import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_details_view.dart';

class ProductDetailsController extends State<ProductDetailsView> {
  static late ProductDetailsController instance;
  late ProductDetailsView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
