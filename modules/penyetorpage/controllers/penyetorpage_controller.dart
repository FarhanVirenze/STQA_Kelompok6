import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

class PenyetorpageController extends GetxController {
  Firestore firestore = Firestore.instance;

  Future<Page<Document>> getReport() async {
    CollectionReference penyetor = firestore.collection('penyetor');

    return penyetor.get();
  }

  Future<void> getData() async {
    final firestore = Firestore.instance;
    final penyetor = firestore.collection('penyetor');
    final snapshot = await penyetor.get();
  }
}
