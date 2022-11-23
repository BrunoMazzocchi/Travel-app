import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../user/ui/widgets/profile_image_card.dart';
import 'firebase_storage_api.dart';
class FirebaseStorageRepository {

  FirebaseStorageAPI storageAPI = FirebaseStorageAPI();
  Future<UploadTask> uploadFile(String path, File image) => storageAPI.uploadFile(path, image);

}