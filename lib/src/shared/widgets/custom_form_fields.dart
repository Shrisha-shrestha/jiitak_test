import 'package:flutter/material.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
// import 'package:flutter/services.dart';
import 'package:remixicon/remixicon.dart';
// import 'package:rojgari/src/shared/shared.dart';

// import '../../config/config.dart';

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     super.key,
//     required this.title,
//     this.inputValidator,
//     this.autoFocus = false,
//     this.keyboardType,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//     this.disableTextField = false,
//     this.minLines,
//     this.maxLines = 1,
//     this.inputFormatters,
//   });

//   final String? Function(String? value, String label)? inputValidator;
//   final bool autoFocus;
//   final TextInputType? keyboardType;
//   final String title;
//   final TextInputAction textInputAction;
//   final TextEditingController? controller;
//   final bool disableTextField;
//   final int? minLines;
//   final int? maxLines;
//   final List<TextInputFormatter>? inputFormatters;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return TextFormField(
//       minLines: minLines,
//       maxLines: minLines ?? maxLines,
//       onTapOutside: (event) => FocusScope.of(context).unfocus(),
//       validator: (value) => inputValidator!(value, title),
//       autofocus: autoFocus,
//       cursorColor: thm.colorScheme.appblack,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       controller: controller,
//       enabled: !disableTextField,
//       inputFormatters: inputFormatters,
//       style: thm.textTheme.pMedium16Regular.copyWith(color: thm.colorScheme.appblack),
//       decoration: InputDecoration(
//         contentPadding: minLines == null ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: 8.0),
//         prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//         prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//         suffixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//         suffixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//         alignLabelWithHint: true,
//         labelText: title,
//         floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray600)),
//         labelStyle: MaterialStateTextStyle.resolveWith(
//             (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
//         enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         disabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedBorder:
//             OutlineInputBorder(borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
//         errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
//       ),
//     );
//   }
// }

// class CustomPasswordField extends StatelessWidget {
//   CustomPasswordField({
//     super.key,
//     required this.title,
//     this.prefixIcon = Remix.lock_2_line,
//     this.inputValidator,
//     this.autoFocus = false,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//   });

//   final String? Function(String? value, String label)? inputValidator;
//   final bool autoFocus;
//   final ValueNotifier<bool> obscureText = ValueNotifier(true);
//   final IconData prefixIcon;
//   final String title;
//   final TextInputAction textInputAction;
//   final TextEditingController? controller;

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return ValueListenableBuilder(
//       valueListenable: obscureText,
//       builder: (context, obscureTextValue, child) => TextFormField(
//         obscureText: obscureTextValue,
//         validator: (value) => inputValidator!(value, title),
//         onTapOutside: (event) => FocusScope.of(context).unfocus(),
//         autofocus: autoFocus,
//         cursorColor: ColorConstants.black,
//         textInputAction: textInputAction,
//         controller: controller,
//         style: thm.textTheme.pMedium16Regular.copyWith(color: thm.colorScheme.appblack),
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.zero,
//           alignLabelWithHint: true,
//           prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//           prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//           // prefixIcon: Icon(prefixIcon, size: 20),
//           // prefixIconColor: MaterialStateColor.resolveWith(
//           //     (states) => states.contains(MaterialState.focused) ? thm.primaryColor : ColorConstants.gray600),
//           suffixIcon: IconButton(
//             splashRadius: 18,
//             icon: Icon(obscureTextValue ? Remix.eye_close_line : Remix.eye_line, size: 20, color: ColorConstants.gray600),
//             onPressed: () => obscureText.value = !obscureText.value,
//           ),
//           labelText: title,
//           floatingLabelStyle: Theme.of(context).textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray600)),
//           labelStyle: MaterialStateTextStyle.resolveWith(
//               (states) => Theme.of(context).textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
//           enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//           disabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//           errorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//           focusedBorder:
//               OutlineInputBorder(borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
//           errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
//         ),
//       ),
//     );
//   }
// }

// class CustomTextFormFieldWithPrefix extends StatelessWidget {
//   const CustomTextFormFieldWithPrefix({
//     super.key,
//     required this.title,
//     required this.prefixIcon,
//     this.inputValidator,
//     this.autoFocus = false,
//     this.keyboardType,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//   });

//   final String? Function(String? value, String label)? inputValidator;
//   final bool autoFocus;
//   final TextInputType? keyboardType;
//   final IconData prefixIcon;
//   final String title;
//   final TextInputAction textInputAction;
//   final TextEditingController? controller;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return TextFormField(
//       onTapOutside: (event) => FocusScope.of(context).unfocus(),
//       validator: (value) => inputValidator!(value, title),
//       autofocus: autoFocus,
//       cursorColor: ColorConstants.black,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       controller: controller,
//       style: thm.textTheme.pMedium16Regular.copyWith(color: thm.colorScheme.appblack),
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.zero,
//         alignLabelWithHint: true,
//         prefixIcon: Icon(prefixIcon, size: 20),
//         prefixIconColor: MaterialStateColor.resolveWith(
//             (states) => states.contains(MaterialState.focused) ? thm.primaryColor : ColorConstants.gray600),
//         labelText: title,
//         floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray600)),
//         labelStyle: MaterialStateTextStyle.resolveWith(
//             (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
//         enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         disabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedBorder:
//             OutlineInputBorder(borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
//         errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
//       ),
//     );
//   }
// }

// class CustomTextFormFieldWithSuffix extends StatelessWidget {
//   const CustomTextFormFieldWithSuffix({
//     super.key,
//     required this.title,
//     this.inputValidator,
//     this.autoFocus = false,
//     this.keyboardType,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//     this.disableTextField = false,
//     this.inputFormatter,
//   });

//   final String? Function(String? value, String label)? inputValidator;
//   final bool autoFocus;
//   final TextInputType? keyboardType;
//   final String title;
//   final TextInputAction textInputAction;
//   final TextEditingController? controller;
//   final bool disableTextField;
//   final List<TextInputFormatter>? inputFormatter;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return TextFormField(
//       enabled: !disableTextField,
//       onTapOutside: (event) => FocusScope.of(context).unfocus(),
//       validator: (value) => inputValidator!(value, title),
//       autofocus: autoFocus,
//       cursorColor: ColorConstants.black,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       controller: controller,
//       inputFormatters: inputFormatter,
//       readOnly: true,
//       style: thm.textTheme.pMedium16Regular.copyWith(color: thm.colorScheme.appblack),
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.zero,
//         alignLabelWithHint: true,
//         prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//         prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//         suffixIcon: const Icon(Remix.arrow_down_s_line, size: 20),
//         suffixIconConstraints: const BoxConstraints(maxWidth: 48.0, minWidth: 48.0),
//         suffixIconColor: MaterialStateColor.resolveWith((states) => ColorConstants.gray600),
//         labelText: title,
//         floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray600)),
//         labelStyle: MaterialStateTextStyle.resolveWith(
//             (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
//         enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         disabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
//         errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
//         focusedBorder:
//             OutlineInputBorder(borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
//         errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
//       ),
//     );
//   }
// }

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);
    return TextFormField(
      // onFieldSubmitted: (_) => onSubmit(fieldTextEditingController.text),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      style: thm.textTheme.pMedium16Regular.copyWith(color: ColorConstants.black),
      enabled: false,
      decoration: InputDecoration(
        fillColor: ColorConstants.gray50,
        filled: true,
        hintText: hintText,
        hintStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pSmall14Regular.merge(const TextStyle(color: ColorConstants.black))),
        contentPadding: EdgeInsets.zero,
        alignLabelWithHint: true,
        prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
        prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
        // suffixIcon: const Icon(Remix.arrow_down_s_line, size: 20),
        suffixIconColor: MaterialStateColor.resolveWith((states) => ColorConstants.gray600),
        floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray600)),
        labelStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray600), borderRadius: BorderRadius.circular(8.0)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray50), borderRadius: BorderRadius.circular(24.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
        errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
      ),
    );
  }
}

// class CustomPlainTextFormField extends StatelessWidget {
//   const CustomPlainTextFormField({
//     Key? key,
//     this.inputValidator,
//     this.autoFocus = false,
//     this.keyboardType,
//     required this.hint,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//     this.disableTextField = false,
//     this.inputFormatters,
//   }) : super(key: key);

//   final String? Function(String? value, String label)? inputValidator;
//   final bool autoFocus;
//   final TextInputType? keyboardType;
//   final String hint;
//   final TextInputAction textInputAction;
//   final TextEditingController? controller;
//   final bool disableTextField;
//   final List<TextInputFormatter>? inputFormatters;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return TextFormField(
//       onTapOutside: (event) => FocusScope.of(context).unfocus(),
//       validator: (value) => inputValidator!(value, hint),
//       autofocus: autoFocus,
//       cursorColor: ColorConstants.black,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       controller: controller,
//       enabled: !disableTextField,
//       inputFormatters: inputFormatters,
//       style: thm.textTheme.pMedium16Regular.copyWith(color: thm.colorScheme.appblack),
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.zero,
//         prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//         prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//         suffixIconConstraints: const BoxConstraints(maxWidth: 16.0),
//         suffixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
//         alignLabelWithHint: true,
//         hintText: hint,
//         hintStyle: MaterialStateTextStyle.resolveWith(
//             (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray600))),
//         fillColor: ColorConstants.white,
//         filled: true,
//         border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)), borderSide: BorderSide.none),
//       ),
//     );
//   }
// }

// class CustomCheckBox extends StatelessWidget {
//   final Widget text;
//   final String validationMsg;
//   const CustomCheckBox({super.key, required this.text, required this.validationMsg});

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return FormField<bool>(
//       validator: (value) => (value == true) ? null : validationMsg,
//       builder: (FormFieldState<bool> field) => Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 8,
//                 backgroundColor: Colors.transparent,
//                 child: Checkbox(
//                   shape: const CircleBorder(),
//                   visualDensity: VisualDensity.compact,
//                   fillColor: MaterialStateColor.resolveWith((states) => thm.primaryColor),
//                   value: field.value ?? false,
//                   isError: true,
//                   onChanged: (value) {
//                     field.didChange(value);
//                   },
//                 ),
//               ),
//               const SizedBox(width: 8.0),
//               text,
//             ],
//           ),
//           if (field.errorText != null)
//             Padding(
//               padding: const EdgeInsets.only(top: 4.0),
//               child: Text(field.errorText ?? '', style: const TextStyle(color: ColorConstants.danger500, fontSize: 10)),
//             ),
//         ],
//       ),
//     );
//   }
// }
