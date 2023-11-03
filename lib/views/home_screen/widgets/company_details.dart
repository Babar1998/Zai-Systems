import 'package:zaisystems/consts/imports.dart';

Widget companyDetails() {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 14,
          offset: Offset(1, 2), // Shadow position
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        welcome.text.size(24).bold.make(),
        5.heightBox,
        companyFullName.text.size(18).color(mehroonColor).bold.make(),
        10.heightBox,
        homeText.text.size(16).make(),
      ],
    ).box.padding(const EdgeInsets.all(20)).color(whiteColor).roundedLg.make(),
  );
}
