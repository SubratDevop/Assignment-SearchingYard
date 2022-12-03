import 'package:flutter/material.dart';
import '../../Constants/Constants.dart';
import 'components/body.dart';

class ItemDetailsScreen extends StatefulWidget {
  ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        
        body: const Body());
  }
}
