# Telemedicine Kiosk App

This is a **Flutter + Native Android kiosk-style application** developed as part of the Android Developer Practical Assignment 2025.  
The app is designed for single-purpose devices used in pharmacy-based telemedicine setups.

---

## **Features Implemented**
- Flutter UI with **Splash Screen**, **Login**, **Home**, **Book Appointment**, and **Doctor Status** screens.
- **Kiosk Mode**: Locks the user within the app using native Android (`startLockTask()`).
- **Boot Completed Receiver**: App auto-starts after device reboot.
- **Firebase Realtime Database**: Fetches real-time doctor availability.
- **Inactivity Auto-Lock**: Logs out after 2 minutes of inactivity.
- **Theme Switching**: Light/Dark mode toggle.
- **Scalable Code Architecture**: Platform channels for Flutter ↔ Native communication.
- **APK Auto-Update (Scaffold)**: Checks for new version (download-only in this version).

---

## **How to Run**
1. Install **Flutter SDK**: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
2. Clone this repository:
   ```bash
   git clone https://github.com/Jatin341/telemedicine_kiosk.git
   cd telemedicine_kiosk
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Add your **Firebase `google-services.json`** to `android/app/` (if using Firebase).
5. Run the app:
   ```bash
   flutter run
   ```

---

## **Firebase Setup (Optional)**
- Create a Firebase project and add an Android app with package:
  ```
  com.example.telemedicine_kiosk
  ```
- Download `google-services.json` and place it under:
  ```
  android/app/google-services.json
  ```
- Realtime Database:
  ```json
  {
    "doctor_status": "online"
  }
  ```

---

## **Screen Recording**
A demonstration video of kiosk mode, boot persistence, and real-time doctor status is available here:  
[**Screen Recording Link**](#) *(Replace with your video link)*

---

## **Repository Info**
- **Branch**: `main`
- **Commit**: Initial commit - Telemedicine Kiosk Assignment
- Developed for **Android Developer Practical Assignment 2025**

---

## **License**
This project is for educational/assignment purposes.
