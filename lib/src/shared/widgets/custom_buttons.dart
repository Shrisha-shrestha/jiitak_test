// import 'package:flutter/material.dart';
// import 'package:remixicon/remixicon.dart';

// import '../../config/config.dart';

// class CustomOutlineButton extends StatelessWidget {
//   const CustomOutlineButton({
//     super.key,
//     required this.title,
//     required this.onPressed,
//     this.backgroundColor,
//     this.disableColor,
//     this.size,
//     this.titleStyle,
//     this.borderWidth = 1.0,
//     this.borderColor,
//   });

//   final Function()? onPressed;
//   final Color? backgroundColor;
//   final Color? disableColor;
//   final Size? size;
//   final String title;
//   final TextStyle? titleStyle;
//   final double borderWidth;
//   final Color? borderColor;

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return OutlinedButton(
//       style: ButtonStyle(
//         minimumSize: MaterialStateProperty.all(size),
//         padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0)),
//         elevation: MaterialStateProperty.resolveWith((states) => 0.0),
//         side: MaterialStateProperty.resolveWith<BorderSide>(
//             (states) => BorderSide(color: borderColor ?? thm.primaryColor, width: borderWidth)),
//         shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
//             (Set<MaterialState> states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
//       ),
//       onPressed: onPressed,
//       child: Text(
//         title,
//         // style: thm.textTheme.pMedium16Medium.merge(TextStyle(color: thm.primaryColor)).merge(titleStyle),
//       ),
//     );
//   }
// }

// class CustomElevatedButton extends StatelessWidget {
//   const CustomElevatedButton({
//     super.key,
//     required this.title,
//     required this.onPressed,
//     this.backgroundColor,
//     this.disableColor,
//     this.size,
//     this.titleStyle,
//     this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
//   });

//   final Function()? onPressed;
//   final Color? backgroundColor;
//   final Color? disableColor;
//   final Size? size;
//   final String title;
//   final TextStyle? titleStyle;
//   final EdgeInsetsGeometry? padding;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);

//     return ElevatedButton(
//       style: ButtonStyle(
//         minimumSize: MaterialStateProperty.all(size),
//         padding: MaterialStateProperty.resolveWith((states) => padding),
//         elevation: MaterialStateProperty.resolveWith((states) => 0.0),
//         backgroundColor: MaterialStateColor.resolveWith((states) {
//           return states.contains(MaterialState.disabled)
//               ? disableColor ?? thm.primaryColor.withOpacity(0.6)
//               : backgroundColor ?? thm.primaryColor.withOpacity(states.contains(MaterialState.pressed) ? 0.6 : 1);
//         }),
//         shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((Set<MaterialState> states) => RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(64.0),
//             )),
//       ),
//       onPressed: onPressed,
//       child:
//           Text(title, 
//           // style: thm.textTheme.pMedium16Medium.merge(TextStyle(color: thm.colorScheme.appwhite)).merge(titleStyle)
//           ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     super.key,
//     required this.child,
//     required this.onPressed,
//     this.backgroundColor,
//     this.disableColor,
//     this.size,
//   });

//   final Function()? onPressed;
//   final Color? backgroundColor;
//   final Color? disableColor;
//   final Size? size;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return ElevatedButton(
//       style: ButtonStyle(
//         minimumSize: MaterialStateProperty.all(size),
//         padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0)),
//         elevation: MaterialStateProperty.resolveWith((states) => 0.0),
//         backgroundColor: MaterialStateColor.resolveWith((states) {
//           return states.contains(MaterialState.disabled)
//               ? disableColor ?? thm.primaryColor.withOpacity(0.6)
//               : backgroundColor ?? thm.primaryColor;
//         }),
//         shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((Set<MaterialState> states) => RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8.0),
//             )),
//       ),
//       onPressed: onPressed,
//       child: child,
//     );
//   }
// }

// class CustomOutlineButtonWithIcon extends StatelessWidget {
//   const CustomOutlineButtonWithIcon({
//     super.key,
//     required this.title,
//     required this.onPressed,
//     this.backgroundColor,
//     this.disableColor,
//     this.size,
//     this.titleStyle,
//     this.borderWidth = 1.0,
//     this.borderColor,
//     required this.iconData,
//   });

//   final Function()? onPressed;
//   final Color? backgroundColor;
//   final Color? disableColor;
//   final Size? size;
//   final String title;
//   final TextStyle? titleStyle;
//   final double borderWidth;
//   final Color? borderColor;
//   final IconData iconData;

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return OutlinedButton.icon(
//       style: ButtonStyle(
//         minimumSize: MaterialStateProperty.all(size),
//         padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0)),
//         elevation: MaterialStateProperty.resolveWith((states) => 0.0),
//         side: MaterialStateProperty.resolveWith<BorderSide>(
//             (states) => BorderSide(color: borderColor ?? thm.primaryColor, width: borderWidth)),
//         shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
//             (Set<MaterialState> states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
//       ),
//       onPressed: onPressed,
//       icon: Icon(iconData),
//       label: Text(title, 
//       // style: thm.textTheme.pMedium16Medium.merge(TextStyle(color: thm.primaryColor)).merge(titleStyle)
//       ),
//     );
//   }
// }

// class CustomIconButtonWithOutline extends StatelessWidget {
//   const CustomIconButtonWithOutline({
//     super.key,
//     required this.onPressed,
//     this.backgroundColor,
//     this.disableColor,
//     this.size,
//     this.borderWidth = 1.0,
//     this.borderColor,
//     required this.iconData,
//     this.iconColor,
//     this.removeBorder = false,
//   });

//   final Function()? onPressed;
//   final Color? backgroundColor;
//   final Color? disableColor;
//   final Size? size;
//   final double borderWidth;
//   final Color? borderColor;
//   final Color? iconColor;

//   final IconData iconData;
//   final bool removeBorder;
//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return IconButton(
//       style: ButtonStyle(
//         backgroundColor: MaterialStateColor.resolveWith((states) => backgroundColor ?? thm.colorScheme.appwhite),
//         minimumSize: MaterialStateProperty.all(size),
//         padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0)),
//         elevation: MaterialStateProperty.resolveWith((states) => 0.0),
//         side: !removeBorder
//             ? MaterialStateProperty.resolveWith<BorderSide>(
//                 (states) => BorderSide(color: borderColor ?? thm.colorScheme.gray500, width: borderWidth))
//             : null,
//         shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
//             (Set<MaterialState> states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
//       ),
//       onPressed: onPressed,
//       icon: Icon(iconData, color: iconColor, size: 20),
//     );
//   }
// }

// class CustomAddButton extends StatelessWidget {
//   const CustomAddButton({super.key, this.onTap});
//   final void Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final double widthRatio = width / 428.0;
//     final thm = Theme.of(context);
//     return InkWell(
//       onTap: onTap,
//       child: Ink(
//         padding: EdgeInsets.all(6.0 * widthRatio),
//         decoration: BoxDecoration(color: thm.colorScheme.primary500, borderRadius: BorderRadius.circular(6.0)),
//         child: Icon(
//           Remix.add_line,
//           color: thm.colorScheme.appwhite,
//           size: 20,
//         ),
//       ),
//     );
//   }
// }

// class CustomIconAndElevatedButton extends StatelessWidget {
//   const CustomIconAndElevatedButton(
//       {super.key,
//       this.onElevatedButtonPressed,
//       this.elevatedButtonBackgroundColor,
//       this.elevatedButtonDisableColor,
//       this.elevatedButtonSize,
//       required this.title,
//       this.titleStyle,
//       this.elevatedButtonPadding,
//       this.iconColor,
//       this.onIconPressed,
//       this.iconData,
//       this.iconSize});

//   final Function()? onElevatedButtonPressed;
//   final Color? elevatedButtonBackgroundColor;
//   final Color? elevatedButtonDisableColor;
//   final Size? elevatedButtonSize;
//   final String title;
//   final TextStyle? titleStyle;
//   final EdgeInsetsGeometry? elevatedButtonPadding;
//   final Color? iconColor;
//   final Function()? onIconPressed;
//   final IconData? iconData;
//   final double? iconSize;

//   @override
//   Widget build(BuildContext context) {
//     final thm = Theme.of(context);
//     return Row(
//       children: [
//         IconButton.filled(
//           style: ButtonStyle(
//             padding: MaterialStateProperty.all(const EdgeInsets.all(8.0)),
//             backgroundColor: MaterialStateProperty.all(ColorConstants.gray500),
//           ),
//           color: iconColor ?? thm.colorScheme.appwhite,
//           iconSize: iconSize ?? 24,
//           onPressed: onIconPressed,
//           icon: Icon(iconData ?? Remix.volume_up_fill),
//         ),
//         const WhiteSpace(width: 16.0),
//         Expanded(
//           child: CustomElevatedButton(
//             title: title,
//             titleStyle: titleStyle,
//             onPressed: onElevatedButtonPressed,
//             backgroundColor: elevatedButtonBackgroundColor,
//             disableColor: elevatedButtonDisableColor,
//             padding: elevatedButtonPadding,
//             size: elevatedButtonSize,
//           ),
//         ),
//       ],
//     );
//   }
// }
