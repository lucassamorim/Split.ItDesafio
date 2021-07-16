import 'package:flutter/material.dart';

import 'package:app_divisao/modules/create_split/create_split_controller.dart';
import 'package:app_divisao/modules/create_split/widgets/step_input_text.dart';
import 'package:app_divisao/modules/create_split/widgets/step_title.dart';

class StepOnePage extends StatefulWidget {
  final CreateSplitController controller;
  const StepOnePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Qual o nome",
          subTitle: "do evento?",
        ),
        StepInputText(
          onChange: (value) {
            widget.controller.setEventName(value);
          },
          hintText: "Ex: churrasco",
        ),
      ],
    );
  }
}
