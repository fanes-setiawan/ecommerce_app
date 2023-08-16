import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/tos_view.dart';

class TosController extends State<TosView> {
  static late TosController instance;
  late TosView view;

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
