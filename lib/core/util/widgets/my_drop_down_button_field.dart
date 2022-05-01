import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:training_app/core/util/constants.dart';
import 'package:training_app/core/util/cubit/cubit.dart';
import 'package:training_app/core/util/cubit/state.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String selectGovernoment = appTranslation(context).select;
    final List<String> governments =
    [
      appTranslation(context).select,
      appTranslation(context).alexandria,
      appTranslation(context).cairo,
      appTranslation(context).giza,
      appTranslation(context).qalyubia,
      appTranslation(context).portSaid,
      appTranslation(context).suez,
      appTranslation(context).gharbia,
      appTranslation(context).dakahlia,
      appTranslation(context).ismailia,
      appTranslation(context).asyut,
      appTranslation(context).fayoum,
      appTranslation(context).sharqia,
      appTranslation(context).aswan,
      appTranslation(context).beheira,
      appTranslation(context).minya,
      appTranslation(context).damietta,
      appTranslation(context).luxor,
      appTranslation(context).qena,
      appTranslation(context).beniSuef,
      appTranslation(context).sohag,
      appTranslation(context).monufia,
      appTranslation(context).redSea,
      appTranslation(context).kafrElSheikh,
      appTranslation(context).northSinai,
      appTranslation(context).matruh,
      appTranslation(context).newValley,
    ];

    return BlocBuilder<AppCubit,AppState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            space5Vertical(context),
            Text(
              appTranslation(context).select,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            space10Vertical(context),
            DropdownButtonFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: BorderSide(
                    color: HexColor(mainColor),
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: BorderSide(
                    color: HexColor(darkGreyColor),
                    width: 1.0,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: BorderSide(
                    color: HexColor(darkGreyColor),
                    width: 1.0,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.0,
                  ),
                ),
              ),
              validator: (value) {
                if (value == governments[0]) {
                  return appTranslation(context).select;
                }
                return null;
              },
              value: selectGovernoment,
              dropdownColor: Colors.white,
              alignment: Alignment.center,
              icon: const Icon(
                Icons.arrow_drop_down ,
                color: Colors.grey,
              ),
              style:  Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.orangeAccent,
                  fontSize: 16
              ),
              onChanged: (String? value)
              {
                selectGovernoment =  value! ;
              },
              items: governments.map<DropdownMenuItem<String>>((String value)
              {
                return
                  DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
