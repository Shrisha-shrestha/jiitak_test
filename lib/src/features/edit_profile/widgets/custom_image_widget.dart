import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';
import 'package:remixicon/remixicon.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({super.key, required this.hasImage, this.imagePath});
  final bool hasImage;
  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);

    return hasImage
        ? Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                Container(
                  height: 90.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: ColorConstants.black.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                Positioned(
                    top: 1.0,
                    right: 1.0,
                    child:
                        IconButton(onPressed: () {}, icon: const Icon(Remix.close_line, color: ColorConstants.white)))
              ],
            ))
        : Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: DottedBorder(
                color: Colors.grey,
                dashPattern: const [4, 4],
                strokeWidth: 2,
                child: SizedBox(
                  height: 90.0,
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Remix.image_line),
                      Text('写真を追加', style: resp.thm.textTheme.pSmall14Medium.copyWith(color: ColorConstants.gray300)),
                    ],
                  ),
                )),
          );
  }
}
