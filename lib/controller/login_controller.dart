import 'package:get/get.dart';
import 'package:simplegetx/widget/btm_sheet_dialog.dart';
import 'package:simplegetx/widget/loading_dialog.dart';

class LoginController extends GetxController {
  var usernameThis = ''.obs;
  var passwordThis = ''.obs;

  login(username, password, context) {
    LoadingDialog(context);
    Future.delayed(Duration(seconds: 2), () {
      Get.back();
      if (username == 'admin' && password == 'admin') {
        usernameThis.value = username;
        passwordThis.value = password;
        CustomBottomSheet(context,
            'Login Berhasil! Berhasil login dengan user ' + usernameThis.value);
        Future.delayed(Duration(seconds: 2), () {
          Get.offAllNamed('home');
        });
      } else {
        CustomBottomSheet(context,
            'Login Gagal! username dan password salah atau tidak terdaftar');
        Future.delayed(Duration(seconds: 2), () {
          Get.back();
        });
      }
    });
  }
}
