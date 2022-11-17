import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:u_less_trash/models/terms_condition_model.dart';

import '../utils/text_style.dart';

class TermConditionItem extends StatelessWidget {
  final TermCondition termCondition;
  const TermConditionItem({super.key, required this.termCondition});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        termCondition.text,
        style: txtTermCondition,
      ),
    );
  }
}
