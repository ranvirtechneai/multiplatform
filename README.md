# Flutter Multiplatform Chatroom App  

A Flutter-based multiplatform application that provides real-time chat functionality with Firebase authentication and chatroom support. This app is designed to work seamlessly on Android, iOS, Web, and Desktop platforms.  

## Features  
- **Multiplatform Support:** Runs on Android, iOS, Web, and Desktop.  
- **Firebase Authentication:** Secure user authentication using Email/Password, Google, and other supported providers.  
- **Real-Time Chat:** Fully functional chatrooms with real-time message updates using Firebase Firestore.  
- **User Profiles:** Display user information in chatrooms.  
- **Responsive Design:** Adaptive UI for all screen sizes and devices.  

## Tech Stack  
- **Framework:** Flutter  
- **Backend:** Firebase (Authentication, Firestore, Cloud Functions)  
- **State Management:** Provider  
- **Packages:**  
  - `firebase_auth`  
  - `cloud_firestore`  
  - `provider`

## Prerequisites  
1. Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)  
2. Set up Firebase for your project: [Firebase Setup Guide](https://firebase.google.com/docs/flutter/setup)  
3. Add Firebase credentials to your project for each platform (Google-services.json, GoogleService-Info.plist).  

## Installation  
1. Clone the repository:  
   ```bash  
   git clone https://github.com/your-repo/flutter-chatroom-app.git  
   cd multiplatform 