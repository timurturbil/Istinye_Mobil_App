import 'dart:io';
import 'package:dio/dio.dart';
import 'package:istinye_mobil/UI/model/modelProduct.dart';
import 'package:mobx/mobx.dart';
part 'view_model.g.dart';

class ViewModel = _ViewModelBase with _$ViewModel;

abstract class _ViewModelBase with Store {
  @observable
  List<Product> products = [];

  @action
  Future<List<Product>> getProducts() async {
    var response = await Dio()
        .get('https://jsonplaceholder.typicode.com/comments?postId=1');
    if (response.statusCode == HttpStatus.ok) {
      final responeData = response.data as List;
      products = responeData.map((e) => Product.fromJson(e)).toList();

      return products;
    }
    return null;
  }
  
  
}
