import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormpageController extends GetxController {
  //TODO: Implement FormpageController
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  CollectionReference menucollection = Firestore.instance.collection('sampah');
  late TextEditingController nama, alamat, jenis, berat;

  final count = 0.obs;
  @override
  void onInit() {
    nama = TextEditingController();
    alamat = TextEditingController();
    jenis = TextEditingController();
    berat = TextEditingController();
  }

String? validateName(String value) {
    if (value.isEmpty) {
      return "nama harus di isi";
    }
    return null;
  }

  String? validateKategori(String value) {
    if (value.isEmpty) {
      return "deskripsi harus di isi";
    }
    return null;
  }

  String? validateBerat(String value) {
    if (value.isEmpty) {
      return "deskripsi harus di isi";
    }
    return null;
  }

  Future savedata(String nama, String alamat, String jenis, String berat) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await menucollection.add({
        "Nama Penyetor": nama,
        "Alamat Penyetor": alamat,
        "Jenis Sampah" : jenis,
        "Berat Sampah": berat,
      });
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    }
  }
}
