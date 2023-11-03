import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/circular_indicator.dart';

Widget expertiesBuilder() {
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
      children: <Widget>[
        experties.text.size(24).bold.color(mehroonColor).make(),
        20.heightBox,
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: expertiesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) => circularIndicator(
            percent: expertiesList[index].percent,
            ratio: expertiesList[index].ratio,
            text: expertiesList[index].title,
          ),
        ),
      ],
    )
        .box
        .padding(const EdgeInsets.all(20))
        .color(whiteColor)
        .outerShadowLg
        .roundedLg
        .make(),
  );
}
