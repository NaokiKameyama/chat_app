import 'package:chat_app/firestore/room_firestore.dart';
import 'package:chat_app/model/user.dart';
import 'package:chat_app/utils/shared_prefs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestore {
  static FirebaseFirestore _firebaseFirestoreInstane =
      FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstane.collection('user');

  static Future<String?> insertNewAccount() async {
    try {
      final newDoc = await _userCollection.add({
        'name': '名無し',
        'image_path':
            'https://play-lh.googleusercontent.com/3ImQkiRynf23t3kZ3PMtmGNA0OaozdlzjkH0e2OTV_wmHxUdXglyGpnWuxqmofmMAw=w240-h480-rw'
      });
      return newDoc.id;
    } catch (e) {
      print('アカウント作成失敗 ==== $e');
      return null;
    }
  }

  static Future<void> createuser() async {
    final myUid = await UserFirestore.insertNewAccount();
    if (myUid != null) {
      await RoomFirestore.createRoom(myUid);
      await SharedPrefs.setUid(myUid);
    }
  }

  static Future<List<QueryDocumentSnapshot>?> fetchUsers() async {
    try {
      final snapshot = await _userCollection.get();
      return snapshot.docs;
    } catch (e) {
      print('ユーザー情報の取得失敗 ==== $e');
      return null;
    }
  }

  static Future<User?> fetchMyProfile() async {
    try {
      String uid = SharedPrefs.fetchUid()!;
      final myProfile = await _userCollection.doc(uid).get();
      User user = User(
        name: myProfile.data()!["name"],
        imagePath: myProfile.data()!['image_path'],
        uid: uid,
      );
      return user;
    } catch (e) {
      print('自分のユーザー情報の取得失敗 --- $e');
    }
  }
}
