import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/category_list_view.dart';

class CategoryListController extends State<CategoryListView> {
  static late CategoryListController instance;
  late CategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<Map<String, dynamic>> categories = [
    {
      'category_name': 'Pizza',
      'photo':
          'https://images.unsplash.com/photo-1449785227466-10687c63e194?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGl6YXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      'item_count': 100,
    },
    {
      'category_name': 'Burger',
      'photo':
          'https://media.istockphoto.com/id/539243164/id/foto/burger-ayam-renyah.jpg?s=612x612&w=0&k=20&c=a24lcish1nKzP98MiBbfp9rfKCB660p7M-vIxGh2H_o=',
      'item_count': 34,
    },
    {
      'category_name': 'Drink',
      'photo':
          'https://images.unsplash.com/photo-1563227812-0ea4c22e6cc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      'item_count': 120,
    },
    {
      'category_name': 'Fried Rice',
      'photo':
          'https://media.istockphoto.com/id/1407864020/id/foto/nasi-goreng.jpg?s=612x612&w=0&k=20&c=Wt_TV0jSQKG8EdvCYE8Z9lb58iMSuD4xtl-XP9g5cHk=',
      'item_count': 100,
    },
    {
      'category_name': 'Chicken',
      'photo':
          'https://media.istockphoto.com/id/1302272289/id/foto/nasi-ayam-panggang-dari-warung-jajanan-di-malaysia.jpg?s=612x612&w=0&k=20&c=ZNEsw2OW9J2uU96rKIpqcGcqRmeE-BFUJyyRS3y5bVg=',
      'item_count': 90,
    },
    {
      'category_name': 'Juice',
      'photo':
          'https://images.unsplash.com/photo-1600271886742-f049cd451bba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SnVpY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60',
      'item_count': 106,
    },
  ];
}
