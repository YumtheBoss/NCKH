import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/dio_client.dart';
import '../shared_preferences/helper.dart';
import '../shared_preferences/preferences.dart';

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final preferenceProvider = Provider<Preference>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return Preference(sharedPreferences);
});

final sharedPrefHelperProvider = Provider<SharedPreferenceHelper>((ref) {
  final preference = ref.watch(preferenceProvider);
  return SharedPreferenceHelper(preference);
});