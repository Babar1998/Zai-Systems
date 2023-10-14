import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:video_player/video_player.dart';

Widget videoPlayer({
  required BuildContext context,
  final controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          services.text.size(24).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          servicesProvide.text.size(16).justify.make(),
        ],
      ).box.width(context.screenWidth).padding(const EdgeInsets.all(20)).make(),
      const CustomSwiper(
        sliderList: servicesList,
        duration: 10,
        sliderNo: 1,
      ),
      10.heightBox,
      customButton(
        onPress: () => controller.setNavIndex(2),
        title: "All Services",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make(),
      20.heightBox,
    ],
  ).box.width(context.screenWidth).white.make();
}
