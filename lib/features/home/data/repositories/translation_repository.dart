import 'package:google_transalate/core/utils/repo/api_services.dart';

import '../models/translation_model.dart';

class TranslationRepository {
  final ApiServices api;

  TranslationRepository(this.api);

  Future<TranslationModel> translateText({
    required String from,
    required String to,
    required String query,
  }) async {
    try {
      final response = await api.translate(from, to, query);
      return TranslationModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Failed to translate: $e");
    }
  }
}
