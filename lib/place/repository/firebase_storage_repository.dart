import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'firebase_storage_api.dart';
class FirebaseStorageRepository {

  FirebaseStorageAPI storageAPI = FirebaseStorageAPI();
  Future<UploadTask> uploadFile(String path, File image) => storageAPI.uploadFile(path, image);
}