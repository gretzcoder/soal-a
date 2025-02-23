import 'package:dio/dio.dart';
import 'package:klinik_app/helpers/api_client.dart';
import 'package:klinik_app/model/Poli.dart';

class PoliService {
  Future<List> listData() async {
    final Response response = await ApiClient().get("poli");
    final List data = response.data as List;
    List<Poli> result = data.map((json) => Poli.fromJson(json)).toList();
    return data;
  }

  Future<Poli> simpan(Poli poli) async {
    var data = poli.toJson();
    final Response response = await ApiClient().post("poli", data);
    Poli result = Poli.fromJson(response.data);
    return result;
  }

  Future<Poli> ubah(Poli poli, String id) async {
    var data = poli.toJson();
    final Response response = await ApiClient().put("poli/$id", data);
    Poli result = Poli.fromJson(response.data);
    return result;
  }

  Future<Poli> getById(String id) async {
    final Response response = await ApiClient().get("poli/$id");
    Poli result = Poli.fromJson(response.data);
  }

  Future<Poli> hapus(String id) async {
    final Response response = await ApiClient().delete("poli/$id");
    Poli result = Poli.fromJson(response.data);
    return result;
  }
}
