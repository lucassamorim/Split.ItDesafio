import 'package:app_divisao/modules/create_split/create_split_controller.dart';
import 'package:app_divisao/modules/create_split/steps/one/step_one_page.dart';
import 'package:app_divisao/modules/create_split/steps/tree/step_tree_page.dart';
import 'package:app_divisao/modules/create_split/steps/two/step_two_page.dart';
import 'package:app_divisao/modules/create_split/widgets/botton_stepper_bar.dart';
import 'package:app_divisao/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> page;

  @override
  void initState() {
    page = [
      StepOnePage(
        controller: controller,
      ),
      StepTwoPage(controller: controller),
      StepTreePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBar(
        onTapBack: controller.backPage,
        controller: controller,
        size: page.length,
      ),
      body: Observer(builder: (_) {
        final index = controller.currentPage;
        return page[index];
      }),
      bottomNavigationBar: BottonStepperBarWidget(
        controller: controller,
        onTapCancel: () {},
        onTapNext: controller.nextPage,
      ),
    );
  }
}
