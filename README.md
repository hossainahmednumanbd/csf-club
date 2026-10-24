# চিলাউড়া সোহাগ এন্ড ফারহান স্পোর্টস ক্লাব

Android app starter for the Chilaura Sohag & Farhan Sports Club.

## Status
- Native Android Kotlin WebView wrapper with Bengali mobile interface
- Members, founders, advisors, committee, donation, expenses, notices, events, gallery
- Editable club name, tagline, welcome, about, contact
- **Demo only:** data currently stays on one phone (localStorage)
- **No secure production admin authentication yet**: do not publish this demo to members
- Supabase SQL schema is a starting point, not connected to the app
- Official club logo is **not yet uploaded to GitHub**; the app currently shows a soccer-ball placeholder

## Free APK build
Open **Actions** > **Android APK build**. It should run on pushes affecting Android app files, or can be started with **Run workflow**. Download the `chilaura-debug-apk` artifact after a successful build. Android signing, online sync, role-based admin login, gallery uploads, security testing and Play Store release AAB are still outstanding.

## Security
Never commit Supabase service-role keys or user passwords. Before public release, use a proper admin login, enforce row-level security, and remove unrestricted editing in the demo UI.
