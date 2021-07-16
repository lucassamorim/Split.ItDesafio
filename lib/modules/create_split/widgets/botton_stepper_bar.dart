import 'package:app_divisao/modules/create_split/create_split_controller.dart';
import 'package:app_divisao/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'stepper_next_button.dart';

class BottonStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  final CreateSplitController controller;
  const BottonStepperBarWidget(
      {Key? key,
      required this.onTapCancel,
      required this.onTapNext,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          Row(
            children: [
              Observer(
                  builder: (_) => StepperNextButtonWidget(
                        label: "Cancelar",
                        onTap: onTapCancel,
                        enabled: controller.enableNavigateButton,
                      )),
              Container(
                width: 1,
                height: 60,
                color: Color(0xFF666666),
              ),
              Observer(
                builder: (_) => StepperNextButtonWidget(
                  label: "Continuar",
                  onTap: onTapNext,
                  enabled: controller.enableNavigateButton,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
