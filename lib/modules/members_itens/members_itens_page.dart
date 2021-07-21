import 'package:app_divisao/modules/login/login_controller.dart';
import 'package:app_divisao/modules/login/login_state.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/modules/login/widgets/login_service.dart';
import 'package:app_divisao/modules/members_itens/widgets/itens.dart';
import 'package:app_divisao/modules/members_itens/widgets/member.dart';
import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MembersItensPage extends StatefulWidget {
  const MembersItensPage({Key? key}) : super(key: key);

  @override
  _MembersItensPageState createState() => _MembersItensPageState();
}

class _MembersItensPageState extends State<MembersItensPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.colors.eventTileTitle,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Churrasco",
          style: AppTheme.textStyles.titleAppBarMembersItens,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppTheme.colors.backgroundLight,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15),
                padding:
                    EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "INTEGRANTES",
                        style: AppTheme.textStyles.titleMembersItens,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    SizedBox(height: 5),
                    MemberWidget(
                      value: 126.00,
                      image:
                          "https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png",
                      member: "José Maria",
                    ),
                    MemberWidget(
                      value: -63.00,
                      image:
                          "https://www.ignboards.com/proxy.php?image=https%3A%2F%2Fassets-prd.ignimgs.com%2Favatars%2F5eb8d6a731d05264144028de%2Fbojack-horseman-p-1-2-1590899237817.png&hash=44217f326d7f4bb442a3e0049518e3f9",
                      member: "José Maria",
                    ),
                    MemberWidget(
                      value: -63.00,
                      image:
                          "https://uploads.jovemnerd.com.br/wp-content/uploads/2020/08/avatar-avatar-picrew.jpg",
                      member: "Maria José",
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1.0, color: Color(0xFFCCCCCC)),
                        ),
                      ),
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "ÍTENS",
                          style: AppTheme.textStyles.titleMembersItens,
                        ),
                      ),
                    ),
                    ItensWidget(
                      item: "Picanha",
                      value: 122.00,
                      position: 1,
                    ),
                    ItensWidget(
                      item: "linguicinha",
                      value: 17.00,
                      position: 2,
                    ),
                    ItensWidget(
                      item: "Carvão",
                      value: 19.00,
                      position: 3,
                    ),
                    ItensWidget(
                      item: "Cerveja",
                      value: 68.00,
                      position: 4,
                    ),
                    ItensWidget(
                      item: "Refrigerante",
                      value: 12.00,
                      position: 5,
                    ),
                    ItensWidget(
                      item: "Pão de alho",
                      value: 15.00,
                      position: 6,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Total",
                              style: AppTheme.textStyles.titleMembersItens,
                            ),
                            margin: EdgeInsets.only(left: 45),
                          ),
                          Text(
                            "R\$ 253,00",
                            style: AppTheme.textStyles.titleMembersItens,
                          ),
                        ],
                      ),
                    )
                    // ListTile(
                    //   leading: Text("1"),
                    //   title: Text("Picanha"),
                    //   trailing: Text("R\$ 122,00"),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
