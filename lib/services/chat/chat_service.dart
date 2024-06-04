import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multiplatorm/model/message_model.dart';

class ChatService extends ChangeNotifier {
  // instance of auth and firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // send message method

  Future<void> sendMessage(String receiverId, String message) async {
    // get current user info
    final String currentUserId = _auth.currentUser!.uid;
    final String currentUserEmail = _auth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();

    // create the a new message
    Message newMessage = Message(
      senderEmail: currentUserEmail,
      senderId: currentUserId,
      receiverId: receiverId,
      message: message,
      timestamp: timestamp,
    );

    // construct the chat room id from current user id and receiver id

    List<String> ids = [currentUserId, receiverId];
    ids.sort(); // sorting the ids so that the chat room id is always the same/unique
    String chatRoomId = ids.join('_');

    // add new message to the db

    await _firestore
        .collection('chatrooms')
        .doc(chatRoomId)
        .collection('messages')
        .add(newMessage.toMap());
  }

  // get messages method
  Stream<QuerySnapshot> getMessages(String userID, String otherUserId) {
    //construct the chat room id
    List<String> ids = [userID, otherUserId];
    ids.sort();
    String chatRoomId = ids.join('_');

    return _firestore
        .collection('chatrooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }
}
