import 'package:apollo_betting_tips/pages/regular/regularmodel.dart';
import 'package:get/get.dart';

import 'regular_network.dart';

class RegularController extends GetxController {
  @override
  void onInit() {
    fetchAllpostData();
    super.onInit();
  }

  var isLoading = false.obs;

  var allmytips = <RegularModel>[].obs;

  void fetchAllpostData() async {
    try {
      isLoading(true);
      var allfinalpost = await RegularApi.fetPostData();
      if (allfinalpost != null) {
        allmytips.assignAll(allfinalpost);
      }
    } finally {
      isLoading(false);
    }
  }
}
