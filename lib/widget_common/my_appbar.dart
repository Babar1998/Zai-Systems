import 'package:zaisystems/consts/imports.dart';

AppBar myAppBar({required String title}) {
  return AppBar(
    backgroundColor: const Color.fromRGBO(101, 18, 2, 1),
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
  );
}
