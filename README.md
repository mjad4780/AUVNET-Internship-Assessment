# 🛒 E-Commerce Flutter App

A simple and elegant e-commerce mobile application built with Flutter, featuring modern UI design, clean architecture, and robust offline capabilities.

## 📱 Screenshots

### 🟡 Onboarding Experience
Beautiful onboarding screens to welcome new users to the app.

<img src="https://github.com/user-attachments/assets/f800bde6-33ce-4d5a-aa3d-5229f349e6f2" width="250"/> <img src="https://github.com/user-attachments/assets/a45c578a-d6be-43ff-b9be-3dc7826309f5" width="250"/> <img src="https://github.com/user-attachments/assets/5ab1d1b5-a131-4595-840b-111de4f3750b" width="250"/>

### 🔐 Authentication
Secure authentication system with modern UI design.

#### Sign In
<img src="https://github.com/user-attachments/assets/6bffa5bd-e39a-4ff2-a1bd-d7ad7c410751" width="250"/>

#### Sign Up
<img src="https://github.com/user-attachments/assets/f40ff60f-cb13-438e-bef3-b5286a5c7e59" width="250"/>

### 🏠 Home & Shopping
Clean and intuitive home screens for browsing products and shopping.

<img src="https://github.com/user-attachments/assets/e4baacb0-0ad7-4307-a1a2-b748b082b1ad" width="250"/> <img src="https://github.com/user-attachments/assets/6372a0ab-0c76-4a03-88cc-110180e4d8f9" width="250"/>

### 🚀 App Startup
Professional app startup experience with custom branding.

#### Splash Screen
<img src="https://github.com/user-attachments/assets/40014136-bbdf-4998-897c-3640e1dd8475" width="250"/>

#### Loading Screen
<img src="https://github.com/user-attachments/assets/b01cb3e2-86a7-46c5-9f90-0ea1458c9272" width="250"/>

#### Launcher Icon
<img src="https://github.com/user-attachments/assets/138e87da-6d67-4d97-957a-1ecfb833643e" width="250"/>

### ⚠️ Error Handling
Comprehensive error management with user-friendly dialogs.

#### Error Dialogs
<img src="https://github.com/user-attachments/assets/c6b7ebdc-fae1-4014-bfa9-0a220ed67f62" width="250"/> <img src="https://github.com/user-attachments/assets/a6ac5c7c-0559-4276-bc0f-7623817518a5" width="250"/> <img src="https://github.com/user-attachments/assets/17c25178-e327-4b78-9eb1-2182fabdd09a" width="250"/>

## ✨ Features

- **Modern UI/UX**: Clean and intuitive interface design
- **User Authentication**: Secure sign-in and sign-up functionality
- **Product Browsing**: Easy-to-navigate product catalog
- **Offline Support**: Data caching for offline browsing
- **Error Handling**: Comprehensive error management
- **Clean Architecture**: Well-structured and maintainable codebase

## 🏗️ Architecture

This app follows **Clean Architecture** principles:

- **Presentation Layer**: UI components and state management
- **Domain Layer**: Business logic and use cases
- **Data Layer**: Repository pattern with multiple data sources

## 🛠️ Tech Stack

- **Frontend**: Flutter & Dart
- **Backend**: Supabase
- **Database**: Supabase Database
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage
- **Local Storage**: Hive (for caching)
- **State Management**:Bloc

## 🔧 Setup Instructions

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Supabase account

### 1. Clone the Repository

```bash
git clone [https://github.com/mjad4780/AUVNET-Internship-Assessment.git]
cd ecommerce-flutter-app
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Supabase Configuration

#### Create Supabase Account & Project

1. Go to [supabase.com](https://supabase.com)
2. Create a new account or sign in
3. Create a new project
4. Navigate to **Settings > API**
5. Copy your:
   - **Project URL**
   - **Anon Public Key**

#### Configure Environment


```
SUPABASE_URL=your_supabase_project_url
SUPABASE_ANON_KEY=your_supabase_anon_key
```

**Important**: Replace the placeholder values with your actual Supabase credentials.

### 4. Run the Application

```bash
# For development
flutter run

# For release build
flutter build apk --release
```

## 📡 Backend Services

### Supabase Integration

This app uses **Supabase** as the backend service for:

- **Authentication**: User registration, login, and session management
- **Database**: Product data, user profiles, and order information
- **Storage**: Image uploads and file management

### Required Supabase Setup

1. **Authentication**: Enable email/password authentication in your Supabase dashboard
2. **Database Tables**: Create necessary tables for:
   - restaurants_nearby
   - service
   - posters
3. **Storage Buckets**: Create buckets for:
   - Product images

## 💾 Offline Capabilities

The app implements **Hive** for local data caching:

- Product data caching
- User preferences
- Offline browsing support
- Automatic sync when online

## 🔍 Error Handling

### Production Error Management

The app includes comprehensive error handling:

- **Custom Error Widget**: Using `ErrorWidget.builder` for production errors
- **Network Error Handling**: Graceful handling of connection issues
- **Supabase Error Handling**: Managed authentication and database errors
- **User-Friendly Messages**: Clear error dialogs and feedback

### Error Screens

- Awesome Dialog for user-friendly error messages
- Fallback screens for critical failures
- Retry mechanisms for network operations

## 🚀 Running the App

### Development Mode

```bash
flutter run --debug
```

### Production Build

```bash
# Android
flutter build apk --release

# iOS (if applicable)
flutter build ios --release
```

## ⚠️ Important Notes

### API Keys Required

**🔑 To run this application, you need your own Supabase API keys.**

If you want to run this app, you'll need to:

1. Create your own Supabase project
2. Get your API keys and URL
3. Contact me at: **mjad3780@gmail.com** for additional setup guidance

### Environment Setup

Make sure to:
- Never commit API keys to version control
- Use environment-specific configurations

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   └── utils/
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── pages/
│   ├── widgets/
│   └── bloc/
└── main.dart
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📧 Contact

For questions, setup help, or API key access:

**Email**: mjad3780@gmail.com



---

**Note**: This is a demo/educational project. For production use, ensure proper security measures and testing are implemented.

## 🔮 Future Enhancements

- [ ] Payment gateway integration
- [ ] Push notifications
- [ ] Advanced search and filtering
- [ ] Wishlist functionality
- [ ] Order tracking
- [ ] Multi-language support

---

*Built with ❤️ using Flutter and Supabase*



