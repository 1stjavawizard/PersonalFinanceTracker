import 'package:flutter/material.dart';
import 'package:personalfinancetracker/project/classes/app_bar.dart';
import 'package:personalfinancetracker/project/classes/constants.dart';
import 'package:personalfinancetracker/project/classes/input_model.dart';
import 'package:personalfinancetracker/project/localization/methods.dart';

import 'input.dart';

class Edit extends StatelessWidget {
  static final _formKey3 = GlobalKey<FormState>(debugLabel: '_formKey3');
  final InputModel? inputModel;
  final IconData categoryIcon;
  const Edit({
    this.inputModel,
    required this.categoryIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: BasicAppBar(getTranslated(context, 'Edit')!),
      body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: PanelForKeyboard(
            AddEditInput(
              formKey: _formKey3,
              inputModel: this.inputModel,
              categoryIcon: this.categoryIcon,
            ),
          )),
    );
  }
}
