import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/shared_provider/shared_providers.dart';
import '../data/api/home_api.dart';
import '../data/repository/home_repository.dart';



final homeApiProvider = Provider<HomeApi>((ref) {
  return HomeApi(ref.read(dioClientProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref.read(homeApiProvider));
});



