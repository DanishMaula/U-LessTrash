import 'package:flutter/material.dart';

import '../models/pre_loved_model.dart';

class PrelovedItem extends StatefulWidget {
  final PrelovedModel prelovedModel;

  const PrelovedItem({super.key, required this.prelovedModel});

  @override
  State<PrelovedItem> createState() => _PrelovedItemState();
}

class _PrelovedItemState extends State<PrelovedItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 124,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            widget.prelovedModel.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
