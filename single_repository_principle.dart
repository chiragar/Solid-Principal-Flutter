/*
Single Responsibility Principle (SRP):
-> A class should have one, and only one, reason to change.
-> This means a class should focus on a single functionality and 
   avoid handling multiple unrelated tasks.
*/

class UserManager {
  bool authenticateUser(String username, String password) {
    return true; // Implement authentication logic here
  }

  void updateUserProfile(String username, Map<String, dynamic> profileData) {
    print('User Profile updated for $username');
    // Implement update profile logic here
  }
}

class AuthManager {
  bool authenticateUser(String username, String password) {
    return true; // Implement authentication logic here
  }
}

class ProfileManager {
  void updateUserProfile(String username, Map<String, dynamic> profileData) {
    print('User Profile updated for $username');
    // Implement update profile logic here
  }
}

void main() {
  UserManager userManager = UserManager();
  AuthManager authManager = AuthManager();
  ProfileManager profileManager = ProfileManager();

  // Example usage
  String username = "exampleUser";
  String password = "examplePassword";
  Map<String, dynamic> profileData = {
    "name": "John Doe",
    "email": "john@example.com",
    // Add more profile data as needed
  };

  // Authenticating user
  bool isAuthenticated = userManager.authenticateUser(username, password);
  if (isAuthenticated) {
    print('User authenticated successfully');

    // Updating user profile
    userManager.updateUserProfile(username, profileData);
    profileManager.updateUserProfile(username, profileData);
  } else {
    print('Authentication failed');
  }
}

/*
Output:
User authenticated successfully
User Profile updated for exampleUser
User Profile updated for exampleUser
*/