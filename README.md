# 1.2 Flutter Todo App

A simple Todo application built using Flutter that allows users to add, remove, and manage tasks efficiently. This project showcases the basic concepts of Flutter app development, including state management, user input handling, and list management.

## Features

- Add new tasks to your Todo list.
- Mark tasks as completed.
- Delete tasks from the list.
- Dynamic updates to the list of tasks.
- Clean, simple, and responsive UI.

## Screenshots
<!-- Add some screenshots of your app here -->
<img src="https://github.com/user-attachments/assets/79764ac9-8def-46a4-8d33-271cabf6eabc" width="300"/>
<img src="https://github.com/user-attachments/assets/4405d0e2-d0ca-44fb-8222-2e2acff7bb14" width="300"/>
<img src="https://github.com/user-attachments/assets/cffcd1a8-054d-45c9-876c-4c8f87b98158" width="300"/>
<img src="https://github.com/user-attachments/assets/b3fd952d-a56a-45de-81dd-061c6eeb2c5d" width="300"/>

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) SDK installed
- Compatible IDE (e.g., [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/))

## Usage

1. Add tasks using the input field.
2. Mark tasks as completed by tapping on them.
3. Swipe or tap the delete button to remove a task.

Here’s a sample README file for your repository:

---

# 1.3 Registration Page

This project is a simple **Registration Page** built using Flutter. It is part of **Flutter Advanced Challenge 1** aimed at improving the understanding of UI components, form validation, and state management in Flutter applications.

## Features

- Responsive Registration UI
- Form Validation for User Input Fields
- Supports Light and Dark Theme
- Input Fields:
  - Username
  - Email
  - Password
  - Confirm Password
- Register Button with Validation

## Screenshots
<img src="https://github.com/user-attachments/assets/27bce52b-5195-4f1d-a190-dcc570c690ef" width="300">
<img src="https://github.com/user-attachments/assets/1c9c20ae-f977-401d-ba7c-cd1a2e93991e" width="300">

## How to Use

1. Open the app and fill out the registration form.
2. The form performs validation checks on all input fields (Username, Email, Password, Confirm Password).
3. Upon successful validation, the user can proceed with registration.



Here’s a README template for the **Theme App** section of your repository:

---

# 1.4 Theme App

This project is a **Theme App** built using Flutter, focusing on implementing both **light** and **dark** themes. It allows users to switch between the two themes dynamically or adapt based on the system settings.

## Features

- Dynamic theme switching between **Light** and **Dark** modes.
- Responsive UI design that adapts to theme changes.
- Centralized theme management with easy customization.
- Utilizes Flutter’s `ThemeData` to configure UI elements.

## Screenshots
<img src="https://github.com/user-attachments/assets/b608d8f6-8855-4072-a927-6542baf08d58" width="300"> 
<img src="https://github.com/user-attachments/assets/29d5d014-bda7-4ef7-9fd9-eee9b35981b1" width="300">

## How It Works

- The app uses `ThemeData` to define both **light** and **dark** themes.
- Users can manually toggle between themes or the app can follow the system-wide theme preference.
- The theme is managed using the `ChangeNotifier` pattern, providing a clean way to switch themes across the app.

### Customization

You can customize the colors, fonts, and other visual aspects of both themes by editing the `theme_app.dart` file. This file contains `ThemeData` configurations for light and dark themes.

## How to Use

1. The app starts with the system's default theme (light/dark).
2. Users can switch themes using the app’s UI.
3. The theme change applies to all screens instantly without restarting the app.





# 1.5 Food Express

**Food Express** is a Flutter app designed to provide a clean and intuitive user interface for food delivery. This project demonstrates advanced Flutter UI techniques, state management, and API integration to simulate a food delivery experience.

## Features

- Browse various food items with images, names, and prices.
- Add food items to the cart.
- Simple and responsive UI for ordering food.
- Dynamic cart functionality.
- Light and dark theme support.

## Screenshots

<img src="https://github.com/user-attachments/assets/8acb83f2-0593-48b6-a55e-721faf857973" width="300">
<img src="https://github.com/user-attachments/assets/2ebbee78-94a3-4b45-8c4d-0a263c897d88" width="300">
<img src="https://github.com/user-attachments/assets/18a32e2e-0d69-40d4-bf0d-10e624d8e877" width="300">


## How It Works

- Users can browse available food items displayed in a list.
- Clicking on a food item adds it to the cart.
- The cart dynamically updates with the total price and items.
- Theme switching is available, allowing users to toggle between light and dark modes.





# 1.6 Contact App 
The **Contact App** is a simple yet powerful Flutter application for managing user contacts. It demonstrates the use of Flutter widgets, state management, and form validation techniques to create an intuitive contact management system.

## Features

- Add new contacts with a name, phone number, and email address.
- View a list of saved contacts.
- Edit and delete contacts.
- Responsive UI with light and dark theme support.
- Form validation for user inputs.

## Screenshots

<img src="https://github.com/user-attachments/assets/f5da9143-f516-4273-8989-0ffa93d5875e" width="300">

## How It Works

- **Add Contacts:** Users can add new contacts by entering a name, phone number, and email. Form validation ensures the fields are properly filled out.
- **View Contacts:** The app displays a list of all saved contacts.
- **Edit/Delete Contacts:** Users can edit or delete existing contacts.
- **Theme Support:** Users can switch between light and dark themes dynamically.

### Contact Data

Contacts are represented using a `ContactModel` class defined in `contact_model.dart`, with the following fields:

- Name
- Phone Number
- Email Address

The contact list is managed using `contact_provider.dart`, which implements the `ChangeNotifier` pattern for state management.

## How to Use

1. Launch the app and navigate to the contact list.
2. Add a new contact by tapping the "Add Contact" button.
3. Fill out the form and submit it to save the contact.
4. View, edit, or delete contacts from the list as needed.
