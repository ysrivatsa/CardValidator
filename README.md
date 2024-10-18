# Card Validator

## Overview

**Card Validator** is a Flutter-based mobile application and web platform that allows users to instantly validate credit and debit card numbers using the **Luhn Algorithm**. This app supports popular card types like Visa and MasterCard and ensures complete privacy by performing validation on the device without storing any data.

The repository contains two folders:
-  **CardValidator** - Source code for the **Flutter Mobile App**.
- **CardValidatorWeb** - Source code for the **Web Version**, built using Flutter and hosted on **Firebase**.

---

## Features

- **Instant Card Validation**: Validates credit and debit cards using the Luhn Algorithm.
- **Privacy Focused**: No data collection. Card numbers are not stored or saved in any database.
- **Cross-Platform**: Available both as a mobile app and a website.
- **Card Type Detection**: Automatically detects card type (Visa, MasterCard) based on card number entered.
- **Responsive Design**: The web version is optimized for all screen sizes.
- **Integrated with Firebase**: The website is hosted on Firebase, ensuring scalability and performance.

---

## Repository Structure

```bash
.
├── CardValidator/       # Flutter Mobile Application Source Code
├── CardValidatorWeb/    # Flutter Web Application Source Code (Firebase hosted)
├── README.md            # Project Documentation

```
# CardValidator Folder
This folder contains the Flutter mobile application source code. The app can be built and deployed for Android and iOS platforms (iOS requires a macOS environment). The app uses the Luhn algorithm to validate card numbers and displays card types (Visa, MasterCard).

# CardValidatorWeb Folder
This folder contains the web version of the app, built using Flutter's web support. The web app has been deployed to Firebase for hosting. The setup and deployment instructions are given below.

# Getting Started
## Prerequisites
To run or build this project, you need the following:

Flutter SDK (v2.5 or later)
Dart SDK
Firebase account for web hosting
Android Studio or Visual Studio Code (for Flutter mobile app development)
Node.js (for Firebase CLI)
# Setup Instructions
### Mobile App (CardValidator)
- Clone the repository to your local machine:

``` bash 
git clone https://github.com/your-username/CardValidator.git
cd CardValidator
```
- Install dependencies:

``` bash 
flutter pub get
```
- Run the app on an emulator or connected device:

``` bash
flutter run
```
- To build the APK for Android:

``` bash 
flutter build apk
```
## Web App (CardValidatorWeb)
- Navigate to the web project directory:

```bash

cd CardValidatorWeb
```  
## Firebase Integration
```
Login with your Firebase Account
firebase login

Initialize Firebase in your project:
firebase init

Deploy the web app to Firebase:   
firebase deploy 
```
The **CardValidatorWeb** is integrated with Firebase Hosting. For deployment:

Configure Firebase settings in your Firebase console.
Update the firebase.json and .firebaserc files as needed.
Follow the deployment steps outlined in the Firebase Hosting documentation.
Privacy Policy
The Card Validator app is privacy-focused. No user information or card data is collected, saved, or shared. All card validation operations are performed locally on the device.

Future Enhancements
iOS Support: Adding support for iOS deployment.
Additional Card Types: Expanding support for more card types (e.g., American Express, Discover).
Localization: Adding support for multiple languages.
Offline Mode: Ensuring the app works seamlessly in offline mode for web users.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For any issues or feature requests, feel free to open an issue in this repository, or reach out to me on:
- **[LinkedIn](https://www.linkedin.com/in/yellakara-srivatsa)**
- **[Instagram](https://www.instagram.com/srivatsa_2871)**
