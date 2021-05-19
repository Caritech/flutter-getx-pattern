import 'package:get/get.dart';
import '../../routes/pages.dart';

class DashboardController extends GetxController {
  final repository;
  DashboardController(this.repository);
  agente() => Get.toNamed(Routes.AGENTES);
  armas() => Get.toNamed(Routes.ARMAS);
  mapas() => Get.toNamed(Routes.MAPAS);
  torneios() => Get.toNamed(Routes.TORNEIOS);
  publicacoes() => Get.toNamed(Routes.PUBLICACOES);
}
