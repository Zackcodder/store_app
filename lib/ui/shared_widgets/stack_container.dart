import 'package:flutter/material.dart';
import 'package:store_app/ui/common/app_colors.dart';
import 'package:store_app/ui/common/ui_helpers.dart';
import 'package:store_app/ui/common/app_strings.dart';

class StackContainer extends StatelessWidget {
  String? imageName;
  String? hashTitle;
  String? mainTitle;
  double topValue;
  double fontSize;
  final String? subTitle;
  StackContainer(
      {super.key,
      required this.hashTitle,
      required this.topValue,
      required this.fontSize,
      required this.mainTitle,
      required this.imageName,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageName ?? '',
          width: double.maxFinite,
          height: 200,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: topValue,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hashTitle ?? '',
                style: const TextStyle(
                  color: kcBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                mainTitle ?? '',
                style: TextStyle(
                  color: kcBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
              ),
              Text(
                subTitle ?? '',
                style: const TextStyle(
                  color: Color.fromARGB(255, 139, 126, 126),
                  // fontWeight: FontWeight.bold,
                  // fontSize: 34,
                ),
              ),
              verticalSpaceMedium,
              Container(
                decoration: BoxDecoration(
                    color: kcBlueGrey, borderRadius: BorderRadius.circular(5)),
                child: const MaterialButton(
                  onPressed: null,
                  height: 40,
                  child: Text(
                    ksCheckThisOut,
                    style: TextStyle(
                      color: kcWhite,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
