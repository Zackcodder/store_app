import 'package:flutter/material.dart';
import 'package:store_app/ui/common/app_colors.dart';
import 'package:store_app/ui/common/ui_helpers.dart';

class MenuContainer extends StatelessWidget {
  String? iconName;
  Widget? childWidget;
  MenuContainer({
    super.key,
    required this.childWidget,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceMedium,
        Container(
          decoration: BoxDecoration(
              color: kcGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(5),
          child: childWidget,
        ),
        verticalSpaceSmall,
        Text(
          iconName ?? '',
          style: const TextStyle(color: kcGrey),
        ),
        verticalSpaceMedium,
      ],
    );
  }
}
