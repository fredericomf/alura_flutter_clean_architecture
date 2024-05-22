import 'package:alura_flutter_clean_architecture/data/api/data_api.dart';
import 'package:alura_flutter_clean_architecture/domain/business/api_workflow.dart';
import 'package:alura_flutter_clean_architecture/domain/models/entry.dart';

class ApiController implements ApiWorkflow {
  final DataApi dataApi = DataApi();

  @override
  Future<List<Entry>> getEntriesByCategory({required String category}) {
    return dataApi.getEntriesByCategory(category: category);
  }
}