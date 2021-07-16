import 'package:app_divisao/modules/home/home_controller.dart';
import 'package:app_divisao/modules/home/home_state.dart';
import 'package:app_divisao/modules/home/widgets/app_bar/app_bar.dart';
import 'package:app_divisao/modules/home/widgets/event_button.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/shared/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    controller.getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        onTapAddButton: () {
          Navigator.pushNamed(context, "/create_split");
        },
        user: user,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Observer(
                builder: (_) {
                  if (controller.state is HomeStateLoading) {
                    return Column(
                      children: [
                        ...List.generate(
                          5,
                          (index) => EventButtonWidget(
                            model: EventModel(),
                            isLoading: true,
                          ),
                        )
                      ],
                    );
                  } else if (controller.state is HomeStateSucesso) {
                    return Column(
                      children: [
                        ...(controller.state as HomeStateSucesso)
                            .events
                            .map((e) => EventButtonWidget(
                                  model: e,
                                ))
                            .toList()
                      ],
                    );
                  } else if (controller.state is HomeStateFalha) {
                    return Text((controller.state as HomeStateFalha).message);
                  } else {
                    if (controller.state is HomeStateLoading) {
                      return Column(
                        children: List.generate(
                          2,
                          (index) => EventButtonWidget(
                            model: EventModel(),
                            isLoading: true,
                          ),
                        ).toList(),
                      );
                    } else if (controller.state is HomeStateLoading) {
                      return Column(
                        children: (controller.state as HomeStateSucesso)
                            .events
                            .map((e) => EventButtonWidget(model: e))
                            .toList(),
                      );
                    } else if (controller.state is HomeStateFalha) {
                      return Text((controller.state as HomeStateFalha).message);
                    } else {
                      return Container();
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
