import 'package:flutter/material.dart';

import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({super.key, required this.title, this.subtitle});
  final String title;
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: resp.thm.textTheme.pMedium16Regular.copyWith(color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: '* ', style: resp.thm.textTheme.pXsmall12Medium.copyWith(color: ColorConstants.danger400)),
              TextSpan(text: subtitle, style: resp.thm.textTheme.pSmall14Medium.copyWith(color: ColorConstants.gray300))
            ],
          ),
        ),
        const SizedBox(height: 4.0)
      ],
    );
  }
}
