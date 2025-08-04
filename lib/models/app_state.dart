class InternData {
  final String name;
  final String referralCode;
  final double totalDonations;
  final List<Reward> rewards;
  final List<Achievement> achievements;
  final List<RecentActivity> recentActivities;
  final List<Goal> goals;
  final Map<String, double> monthlyStats;

  InternData({
    required this.name,
    required this.referralCode,
    required this.totalDonations,
    required this.rewards,
    required this.achievements,
    required this.recentActivities,
    required this.goals,
    required this.monthlyStats,
  });
}

class Reward {
  final String title;
  final String description;
  final String iconPath;
  final bool isUnlocked;
  final double requiredAmount;
  final DateTime? unlockedDate;

  Reward({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.isUnlocked,
    required this.requiredAmount,
    this.unlockedDate,
  });
}

class Achievement {
  final String title;
  final String description;
  final String iconPath;
  final DateTime dateEarned;
  final int points;

  Achievement({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.dateEarned,
    required this.points,
  });
}

class RecentActivity {
  final String title;
  final String description;
  final DateTime timestamp;
  final String type; // 'donation', 'reward', 'achievement', 'milestone'
  final double? amount;

  RecentActivity({
    required this.title,
    required this.description,
    required this.timestamp,
    required this.type,
    this.amount,
  });
}

class Goal {
  final String title;
  final String description;
  final double targetAmount;
  final double currentAmount;
  final DateTime deadline;
  final String iconPath;

  Goal({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.currentAmount,
    required this.deadline,
    required this.iconPath,
  });
}

class LeaderboardEntry {
  final String name;
  final double donations;
  final int rank;
  final String avatarPath;
  final int totalDonations;
  final DateTime lastActive;

  LeaderboardEntry({
    required this.name,
    required this.donations,
    required this.rank,
    required this.avatarPath,
    required this.totalDonations,
    required this.lastActive,
  });
}

class Announcement {
  final String title;
  final String content;
  final DateTime date;
  final String type; // 'info', 'success', 'warning', 'error'
  final bool isImportant;
  final String? author;
  final List<String>? tags;

  Announcement({
    required this.title,
    required this.content,
    required this.date,
    required this.type,
    this.isImportant = false,
    this.author,
    this.tags,
  });
}

// Mock data for the app
class MockData {
  static InternData getCurrentIntern() {
    return InternData(
      name: "Thota Jayanth",
      referralCode: "jayanth2025",
      totalDonations: 15750.0,
      rewards: getRewards(),
      achievements: getAchievements(),
      recentActivities: getRecentActivities(),
      goals: getGoals(),
      monthlyStats: getMonthlyStats(),
    );
  }

  static List<Reward> getRewards() {
    return [
      Reward(
        title: "First Donation",
        description: "Unlock after first ₹100 donation",
        iconPath: "🎯",
        isUnlocked: true,
        requiredAmount: 100,
        unlockedDate: DateTime.now().subtract(const Duration(days: 30)),
      ),
      Reward(
        title: "Rising Star",
        description: "Reach ₹1,000 in donations",
        iconPath: "⭐",
        isUnlocked: true,
        requiredAmount: 1000,
        unlockedDate: DateTime.now().subtract(const Duration(days: 25)),
      ),
      Reward(
        title: "Fundraising Hero",
        description: "Reach ₹5,000 in donations",
        iconPath: "🏆",
        isUnlocked: true,
        requiredAmount: 5000,
        unlockedDate: DateTime.now().subtract(const Duration(days: 20)),
      ),
      Reward(
        title: "Champion",
        description: "Reach ₹10,000 in donations",
        iconPath: "👑",
        isUnlocked: true,
        requiredAmount: 10000,
        unlockedDate: DateTime.now().subtract(const Duration(days: 15)),
      ),
      Reward(
        title: "Legend",
        description: "Reach ₹25,000 in donations",
        iconPath: "🚀",
        isUnlocked: false,
        requiredAmount: 25000,
      ),
      Reward(
        title: "Ultimate Master",
        description: "Reach ₹50,000 in donations",
        iconPath: "💎",
        isUnlocked: false,
        requiredAmount: 50000,
      ),
      Reward(
        title: "Social Butterfly",
        description: "Share 10 times on social media",
        iconPath: "🦋",
        isUnlocked: true,
        requiredAmount: 0,
        unlockedDate: DateTime.now().subtract(const Duration(days: 10)),
      ),
      Reward(
        title: "Team Player",
        description: "Collaborate with 5 team members",
        iconPath: "🤝",
        isUnlocked: false,
        requiredAmount: 0,
      ),
    ];
  }

  static List<Achievement> getAchievements() {
    return [
      Achievement(
        title: "Welcome Aboard!",
        description: "Successfully joined the intern program",
        iconPath: "🎉",
        dateEarned: DateTime.now().subtract(const Duration(days: 30)),
        points: 100,
      ),
      Achievement(
        title: "First Success",
        description: "Completed your first fundraising milestone",
        iconPath: "🎯",
        dateEarned: DateTime.now().subtract(const Duration(days: 25)),
        points: 250,
      ),
      Achievement(
        title: "Team Player",
        description: "Collaborated with 5+ team members",
        iconPath: "🤝",
        dateEarned: DateTime.now().subtract(const Duration(days: 20)),
        points: 500,
      ),
      Achievement(
        title: "Consistent Performer",
        description: "Maintained steady progress for 2 weeks",
        iconPath: "📈",
        dateEarned: DateTime.now().subtract(const Duration(days: 15)),
        points: 750,
      ),
      Achievement(
        title: "Social Media Star",
        description: "Reached 100+ social media shares",
        iconPath: "📱",
        dateEarned: DateTime.now().subtract(const Duration(days: 12)),
        points: 300,
      ),
      Achievement(
        title: "Early Bird",
        description: "Completed tasks before deadline for 5 consecutive days",
        iconPath: "⏰",
        dateEarned: DateTime.now().subtract(const Duration(days: 8)),
        points: 400,
      ),
    ];
  }

  static List<RecentActivity> getRecentActivities() {
    return [
      RecentActivity(
        title: "New Donation Received",
        description: "₹2,500 donation from anonymous donor",
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        type: "donation",
        amount: 2500,
      ),
      RecentActivity(
        title: "Reward Unlocked",
        description: "Champion badge earned for reaching ₹10,000",
        timestamp: DateTime.now().subtract(const Duration(days: 1)),
        type: "reward",
      ),
      RecentActivity(
        title: "Achievement Earned",
        description: "Social Media Star achievement unlocked",
        timestamp: DateTime.now().subtract(const Duration(days: 2)),
        type: "achievement",
      ),
      RecentActivity(
        title: "Milestone Reached",
        description: "Reached 50% of monthly goal",
        timestamp: DateTime.now().subtract(const Duration(days: 3)),
        type: "milestone",
      ),
      RecentActivity(
        title: "Team Collaboration",
        description: "Joined fundraising team with 3 members",
        timestamp: DateTime.now().subtract(const Duration(days: 4)),
        type: "donation",
      ),
    ];
  }

  static List<Goal> getGoals() {
    return [
      Goal(
        title: "Monthly Target",
        description: "Reach ₹20,000 by end of month",
        targetAmount: 20000,
        currentAmount: 15750,
        deadline: DateTime.now().add(const Duration(days: 15)),
        iconPath: "🎯",
      ),
      Goal(
        title: "Weekly Challenge",
        description: "Raise ₹5,000 this week",
        targetAmount: 5000,
        currentAmount: 3200,
        deadline: DateTime.now().add(const Duration(days: 7)),
        iconPath: "📅",
      ),
      Goal(
        title: "Social Media Goal",
        description: "Share campaign 20 times",
        targetAmount: 20,
        currentAmount: 15,
        deadline: DateTime.now().add(const Duration(days: 10)),
        iconPath: "📱",
      ),
    ];
  }

  static Map<String, double> getMonthlyStats() {
    return {
      "January": 8500,
      "February": 7200,
      "March": 15750,
      "April": 0,
      "May": 0,
      "June": 0,
    };
  }

  static List<LeaderboardEntry> getLeaderboard() {
    return [
      LeaderboardEntry(
        name: "Rajesh Kumar",
        donations: 28500.0,
        rank: 1,
        avatarPath: "👨‍💼",
        totalDonations: 45,
        lastActive: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      LeaderboardEntry(
        name: "Priya Sharma",
        donations: 24750.0,
        rank: 2,
        avatarPath: "👩‍💼",
        totalDonations: 38,
        lastActive: DateTime.now().subtract(const Duration(hours: 3)),
      ),
      LeaderboardEntry(
        name: "Amit Patel",
        donations: 19200.0,
        rank: 3,
        avatarPath: "👨‍🎓",
        totalDonations: 32,
        lastActive: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      LeaderboardEntry(
        name: "Thota Jayanth",
        donations: 15750.0,
        rank: 4,
        avatarPath: "👨‍🎓",
        totalDonations: 28,
        lastActive: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
      LeaderboardEntry(
        name: "Vikram Singh",
        donations: 12300.0,
        rank: 5,
        avatarPath: "👨‍💻",
        totalDonations: 25,
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      LeaderboardEntry(
        name: "Anita Desai",
        donations: 9800.0,
        rank: 6,
        avatarPath: "👩‍💻",
        totalDonations: 22,
        lastActive: DateTime.now().subtract(const Duration(days: 1)),
      ),
      LeaderboardEntry(
        name: "Rohit Gupta",
        donations: 7500.0,
        rank: 7,
        avatarPath: "👨‍🔬",
        totalDonations: 18,
        lastActive: DateTime.now().subtract(const Duration(days: 2)),
      ),
    ];
  }

  static List<Announcement> getAnnouncements() {
    return [
      Announcement(
        title: "🎉 New Milestone Rewards Available!",
        content: "We've added exciting new rewards for reaching higher donation milestones. Check out the new Legend and Ultimate Master badges! Plus, earn bonus points for social media engagement.",
        date: DateTime.now().subtract(const Duration(hours: 2)),
        type: "success",
        isImportant: true,
        author: "Admin Team",
        tags: ["rewards", "milestones", "new-features"],
      ),
      Announcement(
        title: "📊 Weekly Leaderboard Update",
        content: "Congratulations to all our top performers this week! The competition is heating up. Keep up the great work! Special shoutout to our top 3 performers.",
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: "info",
        author: "Leaderboard Team",
        tags: ["leaderboard", "weekly-update"],
      ),
      Announcement(
        title: "🔧 System Maintenance Notice",
        content: "We'll be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM IST. The app may be temporarily unavailable during this time. Please save your progress.",
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: "warning",
        author: "Technical Team",
        tags: ["maintenance", "system"],
      ),
      Announcement(
        title: "🎯 Monthly Challenge Launched!",
        content: "Join our January fundraising challenge! Top 3 performers will receive special recognition and bonus rewards. Additional prizes include gift cards and certificates.",
        date: DateTime.now().subtract(const Duration(days: 3)),
        type: "success",
        isImportant: true,
        author: "Challenge Team",
        tags: ["challenge", "monthly", "rewards"],
      ),
      Announcement(
        title: "📚 New Training Resources",
        content: "We've added new training materials to help you improve your fundraising skills. Check them out in the resources section! Includes video tutorials and best practices.",
        date: DateTime.now().subtract(const Duration(days: 5)),
        type: "info",
        author: "Training Team",
        tags: ["training", "resources", "skills"],
      ),
      Announcement(
        title: "🏆 Quarterly Awards Ceremony",
        content: "Save the date! Our quarterly awards ceremony will be held on March 15th. All interns are invited to attend. Special recognition for outstanding performance.",
        date: DateTime.now().subtract(const Duration(days: 7)),
        type: "info",
        isImportant: true,
        author: "Events Team",
        tags: ["ceremony", "awards", "quarterly"],
      ),
      Announcement(
        title: "🌟 New Social Media Features",
        content: "Share your progress directly to social media platforms! New integration with Facebook, Twitter, and LinkedIn. Earn bonus points for social engagement.",
        date: DateTime.now().subtract(const Duration(days: 8)),
        type: "success",
        author: "Social Media Team",
        tags: ["social-media", "integration", "bonus"],
      ),
      Announcement(
        title: "📈 Performance Analytics Dashboard",
        content: "New analytics dashboard available! Track your performance metrics, donation trends, and engagement rates. Access detailed reports and insights.",
        date: DateTime.now().subtract(const Duration(days: 10)),
        type: "info",
        author: "Analytics Team",
        tags: ["analytics", "dashboard", "reports"],
      ),
    ];
  }
}