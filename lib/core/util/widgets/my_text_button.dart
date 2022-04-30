import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:training_app/core/util/constants.dart';

class MyTextButton extends StatelessWidget {
  final String title;

  const MyTextButton({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: HexColor(mainColor),
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
