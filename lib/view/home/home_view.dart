import 'package:flutter/material.dart';
import 'package:kelimeoyunu/constants/color_constant.dart';
import 'package:kelimeoyunu/constants/padding_constant.dart';

part 'home_string_values.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _HomeStringValues values =
      _HomeStringValues(); // homestring class'ından values türedi
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: ColorConstants.instance.electionNight,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: PaddingConstants.instance.paddingAllNormal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            values.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(color: ColorConstants.instance.mango),
                          ),
                          Text(values.title2,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                      color: ColorConstants.instance.mango)),
                        ],
                      )),
                ),
              )),
          /*Expanded(
            flex: 3,
            child: Container(
              height: 255,
              width: 255,
              color: ColorConstants.instance.electionNight,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: PaddingConstants.instance.paddingAllNormal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/startlogo.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          */
          Expanded(
            flex: 1,
            child: Container(
              color: ColorConstants.instance.electionNight,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: PaddingConstants.instance.paddingAllNormal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/mskulogo.png'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// alignment ekran üzerindeki containerların içindeki widgetların konumlandırılmasında kullanılıyor.
// Container 'ı widget ile wrapp yapıp Expanded convert ediyoruz.
// Expanded ile dinamik Container kullanımı sağlanıyor. Flex ile kapladığı alan paylaşımı yapılıyor.
