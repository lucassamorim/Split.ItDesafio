import 'package:app_divisao/modules/create_split/widgets/step_input_money.dart';
import 'package:app_divisao/modules/create_split/widgets/step_input_text.dart';
import 'package:app_divisao/modules/create_split/widgets/step_title.dart';
import 'package:flutter/material.dart';

class StepTreePage extends StatefulWidget {
  const StepTreePage({Key? key}) : super(key: key);

  @override
  _StepTreePageState createState() => _StepTreePageState();
}

class _StepTreePageState extends State<StepTreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StepTitleWidget(
            title: "Qual ou quais", subTitle: "itens você quer dividir?"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("1"),
              ),
              Expanded(
                flex: 3,
                child: StepInputText(
                  padding: EdgeInsets.zero,
                  onChange: (value) {},
                  hintText: "",
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputMoney(
                  padding: EdgeInsets.zero,
                  onChange: (value) {
                    print(value);
                  },
                  hintText: "R\$ 0,00",
                  align: TextAlign.start,
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
