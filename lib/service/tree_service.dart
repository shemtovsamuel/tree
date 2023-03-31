import 'dio_client.dart';
import '../model/tree_model.dart';
import 'api_const.dart';

class TreeService {
  Future<List<TreeModel>> getTree(int rows, int start) async {
    try {
      final resultData = await DioClient().getData(ApiConst.path, rows, start);
      final List<dynamic> records = resultData["records"] ?? [];
      return records.map((e) => TreeModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
