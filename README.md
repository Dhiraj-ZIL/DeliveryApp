# DeliveryApp App

A modular quiz application built using Flutter and Clean Architecture principles. This app demonstrates key architectural patterns and integrations, including GraphQL, Firebase, Remote Config, and Isolates for advanced performance optimization.

---

## 🔧 Features

- ✅ Clean Architecture (UI, Logic, Storage, Network layers)
- 📦 Modular code structure using packages (`core`, `quiz_feature`)
- 🧠 Isolate implementation for:
  - Advanced leaderboard calculations
  - Result identification
- 🔍 GitHub GraphQL integration:
  - Fetch repositories
  - Star/Unstar functionality
  - Search with query text and repo count
- ☁️ Firebase Remote Config:
  - Configure number of questions
  - Set test duration
  - Toggle between Dark/Light mode remotely
- 🌐 Open Trivia DB API for quiz questions
- 🔐 Firebase Authentication with Google Sign-In
- 🗃️ Firestore used for secure quiz data storage

---

## 📂 Project Structure

lib/
├── core/ # Core services, utilities, themes
├── quiz_feature/ # Feature-specific logic and UI
│ ├── data/ # Models and repository
│ ├── domain/ # Entities and use cases
│ ├── presentation/ # UI screens, widgets, state management
├── shared/ # Shared widgets and components

yaml
Copy
Edit

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Firebase Project (for Auth and Firestore)
- GitHub Token (for GraphQL queries)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flashquiz.git
   Get dependencies:
   ```

bash
Copy
Edit
flutter pub get
Configure Firebase:

Add your google-services.json (Android)

Add GoogleService-Info.plist (iOS)

Set up Remote Config parameters in Firebase Console:

quiz_time_limit: 15 (int)

question_count: 10 (int)

app_theme: "dark" or "light"

📹 Demo & Code
🔗 Assignment Folder (Code + Demo Video)

GitHub repository is private — access available on request.

📄 License
This project is for educational and assessment purposes only.

🙏 Acknowledgments
Thanks to the FoneInsure team for the opportunity to work on this assessment.
Quiz questions provided by Open Trivia DB.
