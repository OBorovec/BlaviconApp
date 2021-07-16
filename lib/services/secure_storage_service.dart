// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class SecureStorageService {
//   static SecureStorageService _intance;
//   FlutterSecureStorage flutterSecureStorage;

//   SecureStorageService._internal() {
//     this.flutterSecureStorage = new FlutterSecureStorage();
//   }

//   static SecureStorageService getInstance() {
//     _intance ??= SecureStorageService._internal();
//     return _intance;
//   }

//   Future<void> set(String key, String value) async {
//     await flutterSecureStorage.write(key: key, value: value);
//   }

//   Future<String> get(String key) async {
//     return await flutterSecureStorage.read(key: key);
//   }

//   Future<void> clear() async {
//     await flutterSecureStorage.deleteAll();
//   }
// }
