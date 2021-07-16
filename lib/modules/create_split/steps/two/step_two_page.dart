import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:app_divisao/modules/create_split/create_split_controller.dart';
import 'package:app_divisao/modules/create_split/steps/two/step_to_controller.dart';
import 'package:app_divisao/modules/create_split/widgets/person_tile.dart';
import 'package:app_divisao/modules/create_split/widgets/step_input_text.dart';
import 'package:app_divisao/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  final CreateSplitController controller;
  const StepTwoPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  late StepToController controller;

  @override
  void initState() {
    controller = StepToController(controller: widget.controller);
    controller.getFrends();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(title: "Com quem", subTitle: "você quer dividir?"),
        StepInputText(
          onChange: (value) {
            controller.onChange(value);
          },
          hintText: "Nome da pessoa",
        ),
        SizedBox(height: 35),
        Observer(builder: (_) {
          if (controller.selectedFriends.isEmpty) {
            return Container();
          } else {
            return Column(children: [
              ...controller.selectedFriends
                  .map((e) => PersonTileWidget(
                        data: e,
                        isRemoved: true,
                        onPressed: () {
                          controller.removeFriends(e);
                        },
                      ))
                  .toList(),
              SizedBox(
                height: 16,
              )
            ]);
          }
        }),
        Observer(builder: (_) {
          if (controller.items.isEmpty) {
            return Text("Nenhum amigo encontrado");
          } else {
            return Column(
                children: controller.items
                    .map((e) => PersonTileWidget(
                          data: e,
                          onPressed: () {
                            controller.addFriends(e);
                          },
                        ))
                    .toList());
          }
        }),
      ],
    );
  }
}
