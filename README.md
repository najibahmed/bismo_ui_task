
# Project Title

A Flutter App that Display Gift Cards and Loyality Cards with store name, barcode. Further it allows user scan barcode including QR code even the user can give input and display the scanned number on the card.


## Features
- Scan BarCode and QR-Code
- Generate BarCode by user input
- Search Card by title
- Cross platform
- Colorful Ui


## Screenshots

![App Screenshot](https://github.com/user-attachments/assets/ea3b1c46-5d28-4208-9a9c-df950e3c925b)
![App Screenshot](https://github.com/user-attachments/assets/99b27d1d-81e2-4b3b-9836-81b540cb6c8e)
![App Screenshot](https://github.com/user-attachments/assets/39c8f8b4-a442-44f6-840e-3a13c0360028)
![App Screenshot](https://github.com/user-attachments/assets/8bccafdf-2ca5-4ab2-8e50-663fbbcec608)
![App Screenshot](https://github.com/user-attachments/assets/bc25c930-4e9d-4330-811c-2b3071ba46f9)





## Getting Started
### Prerequisites
#### Ensure you have the following installed:
-Flutter SDK (version 3.x or higher recommended)
- Dart SDK
- Git
- Android Studio or VS Code
- Xcode (For iOS development - macOS only)
- A connected device or emulator/simulator (Android or iOS)



### Installation

1. Install bismo_ui_task with git

```bash
  git clone https://github.com/najibahmed/bismo_ui_task.git
  cd bismo_ui_task
```
2. Install Dependencies
   Run the following command to fetch the required packages:
```bash
  flutter pub get
```
### Run the Application
Use the following command to run the app on an emulator or a connected device
```bash
  flutter run
```

### Build Instructions
#### Android
```
flutter build apk
```
#### iOS
```
flutter build ios
```
## Folder Structure
```
lib/
├─ app/
│  ├─ helper/
│  │  ├─ data.dart
│  │  ├─ dependencies.dart
│  ├─ modules/
│  │  ├─ add_card/
│  │  │  ├─ add_card_view.dart
│  │  │  ├─ barcode_scan_view.dart
│  │  │  ├─ card_add_binding.dart
│  │  │  ├─ card_add_controller.dart
│  │  │  ├─ successful_card_add_view.dart
│  │  ├─ dashboard/
│  │  │  ├─ dashboard_binding.dart
│  │  │  ├─ dashboard_controller.dart
│  │  │  ├─ dashboard_view.dart
│  │  │  ├─ search_view.dart
│  ├─ route/
│  │  ├─ route_helper.dart
│  ├─ utils/
│  │  ├─ app_images.dart
│  │  ├─ colors.dart
│  │  ├─ dimension.dart
│  ├─ models/
│  │  ├─ card_model.dart
│  ├─ widgets/
│  │  ├─ giftCardItem.dart
│  │  ├─ link_button.dart
│  │  ├─ small_text.dart
│  │  ├─ big_text
├─ main.dart
```

## Contributing
Contributions are welcome! Please follow the steps below:

1. Fork the repository.
2. Create a new branch: git checkout -b feature/your-feature-name.
3. Make your changes and commit: git commit -m 'Add some feature'.
4. Push to the branch: git push origin feature/your-feature-name.
5. Open a pull request.


## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/)

