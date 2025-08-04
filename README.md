# Intern Dashboard - Fundraising Portal

A beautiful and modern Flutter app that simulates a fundraising intern portal with comprehensive features and smooth animations.

## 🚀 Features

### 📱 Screens
- **Login/Sign-Up Screen**: Beautiful animated login interface with form validation
- **Dashboard Screen**: Comprehensive overview with stats, referral code, rewards, achievements, goals, and recent activities
- **Leaderboard Screen**: Interactive leaderboard with podium view and rankings
- **Announcements Screen**: News and updates with categorized announcements

### 🎯 Key Features
- **Intern Profile**: Shows intern name (Thota Jayanth) and referral code (jayanth2025)
- **Total Donations**: Displays total raised amount (₹15,750)
- **Rewards System**: Unlockable rewards based on donation milestones
- **Achievements**: Track progress and earned achievements with points
- **Goals & Progress**: Set and track fundraising goals with deadlines
- **Recent Activities**: Real-time activity feed with timestamps
- **Leaderboard**: Real-time rankings with top performers
- **Announcements**: Important updates and news with author information

### 🎨 UI/UX Features
- **Modern Design**: Clean, responsive design with Material Design 3
- **Smooth Animations**: Page transitions and micro-interactions
- **Color Scheme**: Professional blue theme with consistent branding
- **Typography**: Google Fonts (Poppins) for better readability
- **Icons**: Material Icons and emoji icons for visual appeal

### 📊 Data Management
- **Mock Data**: Comprehensive dummy data for testing
- **State Management**: Local state management with proper data flow
- **Responsive Layout**: Works on different screen sizes

## 🛠️ Technical Stack

- **Framework**: Flutter 3.8.1+
- **Language**: Dart
- **Dependencies**:
  - `google_fonts`: Modern typography
  - `flutter_bloc`: State management (ready for future use)
  - `shared_preferences`: Local storage (ready for future use)
  - `animations`: Smooth page transitions

## 📱 App Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── app_state.dart       # Data models and mock data
├── screens/
│   ├── login_screen.dart    # Login/Sign-up interface
│   ├── dashboard_screen.dart # Main dashboard
│   ├── leaderboard_screen.dart # Leaderboard view
│   └── announcements_screen.dart # Announcements
└── widgets/
    ├── bottom_navigation.dart # Navigation bar
    ├── stats_card.dart       # Statistics cards
    ├── reward_card.dart      # Reward display
    └── achievement_card.dart # Achievement display
```

## 🎯 Mock Data

The app includes comprehensive mock data:

### Intern Profile
- **Name**: Thota Jayanth
- **Referral Code**: jayanth2025
- **Total Donations**: ₹15,750
- **Rank**: #4 on leaderboard

### Rewards System
- First Donation (₹100) ✅
- Rising Star (₹1,000) ✅
- Fundraising Hero (₹5,000) ✅
- Champion (₹10,000) ✅
- Social Butterfly (10 shares) ✅
- Legend (₹25,000) 🔒
- Ultimate Master (₹50,000) 🔒
- Team Player (5 collaborations) 🔒

### Achievements
- Welcome Aboard! 🎉 (100 points)
- First Success 🎯 (250 points)
- Team Player 🤝 (500 points)
- Consistent Performer 📈 (750 points)
- Social Media Star 📱 (300 points)
- Early Bird ⏰ (400 points)

### Leaderboard
1. Rajesh Kumar - ₹28,500
2. Priya Sharma - ₹24,750
3. Amit Patel - ₹19,200
4. **Thota Jayanth** - ₹15,750
5. Vikram Singh - ₹12,300

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.8.1 or higher
- Dart SDK
- Android Studio / VS Code

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd intern_dashboard
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 🎨 Design Features

### Color Palette
- **Primary**: #1E88E5 (Blue)
- **Secondary**: #1565C0 (Dark Blue)
- **Background**: #F5F5F5 (Light Grey)
- **Text**: #424242 (Dark Grey)

### Typography
- **Font Family**: Poppins (Google Fonts)
- **Headings**: 24px, Bold
- **Body Text**: 16px, Regular
- **Captions**: 14px, Medium

### Animations
- **Page Transitions**: Fade and slide animations
- **Card Animations**: Scale and opacity effects
- **Loading States**: Smooth loading indicators
- **Micro-interactions**: Button hover and press effects

## 📱 Screenshots

### Login Screen
- Beautiful gradient background
- Animated form with validation
- Toggle between login and sign-up

### Dashboard
- Welcome section with intern info
- Statistics cards (Total Raised, Rewards, Achievements, Rank)
- Referral code with copy functionality
- Horizontal scrolling rewards
- Recent achievements list
- Goals tracking with progress bars
- Recent activities feed

### Leaderboard
- Top 3 podium with medals
- Full rankings list
- Current user highlighting
- Refresh functionality

### Announcements
- Important announcements section
- All announcements list
- Detailed view for each announcement
- Pull-to-refresh functionality

## 🔧 Customization

### Adding New Features
1. **New Screens**: Add to `lib/screens/`
2. **New Widgets**: Add to `lib/widgets/`
3. **Data Models**: Update `lib/models/app_state.dart`
4. **Navigation**: Update `lib/widgets/bottom_navigation.dart`

### Modifying Data
- Edit mock data in `lib/models/app_state.dart`
- Update intern information, rewards, achievements, etc.

### Styling
- Theme colors in `lib/main.dart`
- Component styles in respective widget files
- Global styles in theme configuration

## 🧪 Testing

```bash
# Run tests
flutter test

# Run with coverage
flutter test --coverage
```

## 📄 License

This project is created for educational purposes as part of the Flutter Intern Dashboard assignment.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📞 Support

For any questions or issues, please create an issue in the repository.

---

**Built with ❤️ using Flutter**

# OUTPUT IMAGES:
<img width="1887" height="991" alt="Image" src="https://github.com/user-attachments/assets/4dc1df96-4784-4382-9f12-e799f46baa9a" />
