import '../pages/home/page.dart';
import '../pages/splash/page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      //binding: HomeBinding(),
    ),
    // GetPage(
    //   name: Routes.PUBLICACAO_DETAIL,
    //   page: () => PublicacaoDetailPage(),
    //   binding: PublicacaoDetailBinding(),
    // ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
  ];
}
