import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:klinik_app/helpers/api_client.dart';
import 'package:klinik_app/helpers/user_info.dart';
import 'package:klinik_app/model/Poli.dart';
import 'package:klinik_app/services/login_service.dart';
import 'package:klinik_app/services/poli_service.dart';

void main() {
group("Soal A", (){
    test("Soal 1", () async {
    //assert
    expect(await PoliService().getById('1'), isA<Poli>());
  });

  test("Soal 2", () async {
    Poli poli = await PoliService().getById('1');
    
    expect(poli.id, isA<String>());
  });

  test("Soal 3", () async {
    expect(LoginService().login('admin', 'admin'), true);
  });

  test("Soal 4", () async {
    final Response response = await ApiClient().get("poli/1");
    Poli result = Poli.fromJson(response.data);
    
    expect(result, isA<Poli>());
  });

  test("Soal 5", () async {
    expect(await PoliService().listData(), isA<List<Poli>>());
  });
});
}