import 'package:get/get.dart';
import 'package:simplegetx/controller/login_controller.dart';

class InjectBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }
}
