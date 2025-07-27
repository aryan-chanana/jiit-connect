# 📱 JIIT Connect

**JIIT Connect** is a campus-centric Flutter application designed for students of **Jaypee Institute of Information Technology (JIIT)**. It simplifies campus life by integrating communication, navigation, and academic utilities into one intuitive mobile app.

---

## 🚀 Features

- 🔒 **Secure Google Sign-In** (OAuth)
- 🗺️ **Navigation Assistant** using **Dijkstra’s algorithm** to guide users within campus buildings
- 💬 **Real-time Chat System**
- 📅 **Events & Notices** portal
- 🧠 **Face Recognition-based login system** (for additional modules)

---

## 📸 Screenshots

> _Screenshots for Home, Chat, Navigation, etc._

---

## 📦 Tech Stack

| Layer           | Technology                      |
|----------------|----------------------------------|
| Framework       | Flutter (Dart)                   |
| Authentication  | Google OAuth                     |
| Database        | Firebase Firestore, SQL DB       |
| Face Recognition| Flutter based external API       |
| Navigation Algo | Dijkstra’s Algorithm (Custom)    |

---

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK installed
- Firebase project with:
  - Firestore, SQL DB
  - Firebase Auth enabled
- Google API keys for:
  - Sign-In

### Steps

```bash
git clone https://github.com/aryan-chanana/jiit-connectAlmost.git
cd jiit-connectAlmost
flutter pub get
```

Add Google Maps API key in AndroidManifest.xml


## Folder Structure

```
jiit-connect/
├── lib/
│   ├── screens/         # UI Screens
│   ├── services/        # Auth, DB, Navigation
│   ├── models/          # Data models
│   ├── widgets/         # Custom UI Components
│   └── main.dart
├── assets/              # App images, logos, etc.
├── android/             # Android-specific code & configs
├── ios/                 # iOS-specific code & configs
└── pubspec.yaml         # Dependencies
```

## 🤝 Contributions
Open to contributions from students or developers who want to improve JIIT campus life. Create a PR or open an issue.

## 📜 License
MIT License. See LICENSE for details.

## 👤 Developed By

```
Aryan Chanana
B.Tech CSE – Jaypee Institute of Information Technology
GitHub: @aryan-chanana
```
