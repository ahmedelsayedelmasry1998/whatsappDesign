import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ComaraController extends GetxController {
  var imagePicker = ImagePicker();
  openComara() async {
    var com = await imagePicker.pickImage(source: ImageSource.camera);
  }
}
