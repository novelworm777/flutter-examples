# firestore_example

A simple example of flutter app using Cloud Firestore. And this is more to documentation for my own use so that I can referencing from here later on.

## My Plugins Version

Flutter 2.2.3<br>
firebase_core 1.6.0<br>
cloud_firestore 2.5.3

## Setting Up Database

1. Click on the **Android icon** to add Android app into the project.
2. To get Android package name, go to android/app/build.gradle. It's the **applicationId** in defaultConfig.
3. Download **google-services.json** and place it in the android/app.
4. Copy or note the **version of google-services** because you will need this.
5. Create a **collection** and a document (optional).

## Setting Up Android App

### android/build.gradle

Go to android/build.gradle and add dependency. The version is according to the version given you have saved when setting up database. When I code this, the version was 4.3.10.

```
classpath 'com.google.gms:google-services:4.3.10'
```

### android/app/build.gradle

Go to android/app/build.gradle and add plugin.

```
apply plugin: 'com.google.gms.google-services'
```

In defaultConfig, change minSdkVersion version and add config.

```
minSdkVersion 23
multiDexEnabled true
```

### Terminal

In terminal, run these and you can check pubspec.yml for the installed firebase_core and cloud_firestore.

```
flutter pub add firebase_core
flutter pub add cloud_firestore
```

## Flutter Simple App

The code for the app is from [here](https://learnflutterwithme.com/cloud-firestore), so it's not mine.

### CRUD Implementation

- [x] Create
- [x] Read
- [ ] Update
- [x] Delete

### Install APK

Referencing from [here](https://flutter.dev/docs/deployment/android).

```
flutter build apk --split-per-abi
flutter install
```