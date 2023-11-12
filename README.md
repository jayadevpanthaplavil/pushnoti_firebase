# Flutter Push Notifications using Firebase

This Flutter project demonstrates the implementation of push notifications using Firebase Cloud Messaging (FCM). With this setup, you can send notifications to your Flutter app from the Firebase console or your server using Firebase Cloud Messaging.

## Screenshots

| Home Page | Notification Handling | Demo |
|-----------|-----------|-----------|
|<img src="https://github.com/jayadevpanthaplavil/pushnoti_firebase/assets/123856291/1d1bcee8-a298-4813-810e-6be953934d13" width="250" />|<img src="https://github.com/jayadevpanthaplavil/pushnoti_firebase/assets/123856291/16f92700-e569-40a3-97f2-31c010112640" width="250" />|<img src="https://github.com/jayadevpanthaplavil/pushnoti_firebase/assets/123856291/e4bf97d4-8d02-4ab7-a504-51d7860062ea" width="250" />|


## What's inside

- Firebase cloud Messaging
- Token Handling
- Notification Handling 


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#### 1. Clone 

```bash
# Clone the repo
git clone https://github.com/jayadevpanthaplavil/pushnoti_firebase.git
```

#### 2. Open cmd and install dependencies

```bash
npm install -g firebase-tools
```

#### 3. Firebase configuration

Create a new Firebase project on the Firebase console

```bash
firebase login
```

```bash
dart pub global activate flutterfire_cli
```

Add environment variable

```bash
flutterfire configure
```

```bash
flutter pub add firebase_core
```

```bash
flutter pub add firebase_messaging
```

#### 4. Test Notifications

Use the Firebase console to send test notifications


## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests. Any suggestions or improvements are welcome!


## License

This project is licensed under the MIT License - see the [MIT License](LICENSE) file for details.

