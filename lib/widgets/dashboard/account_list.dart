import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/account_model.dart';

import 'account_items.dart';

class AccountList extends StatelessWidget{
  final List<Accounts> list;

  const AccountList({super.key, required this.list});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
        itemBuilder: (context, index) {
          final account = list[index];
          return AccountItmes(accounts: account);
        },
    );
  }

}