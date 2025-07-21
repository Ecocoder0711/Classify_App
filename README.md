# Classify - A Modern Flutter Catalog App

A sleek and modern catalog application built with Flutter, designed as a B2B tool for distributors to showcase their product inventory to shopkeepers and create orders on the go.

## 🚀 Features

* **Splash Screen:** An elegant, animated entry point to the application.
* **Dynamic Product Catalog:** Products are loaded dynamically from a local `catalog.json` file, making the inventory easy to update.
* **Detailed Product View:** Tap on any item to navigate to a dedicated details page with a larger image and full description.
* **Hero Animations:** Smooth, shared-element transitions between the list and detail pages.
* **Adaptive Theme:** Automatically switches between a beautiful Light and Dark mode based on the system settings.
* **Modern UI:** Built with the latest Material 3 design principles and custom fonts via Google Fonts.

## 🏛️ Project Architecture

This project follows a clean, scalable, and professional architecture to keep the code organized and maintainable. The structure is designed to separate concerns, making it easier to find files, manage state, and build reusable components.

* `lib/`
    * `core/`
        * `store.dart`: Manages the central app state (VxStore).
    * `models/`
        * `catalog.dart`: Defines the data structure for catalog items.
        * `cart.dart`: Defines the data structure for the shopping cart/order.
    * `pages/`
        * `home_page.dart`: The main screen displaying the product list.
        * `home_detail_page.dart`: The screen showing details for a single product.
        * `splash_page.dart`: The initial loading screen.
    * `utils/`
        * `routes.dart`: Defines named navigation routes.
        * `themes.dart`: Contains the light and dark theme data.
    * `widgets/`
        * `catalog_list.dart`: The widget that builds the list of items.
        * `catalog_item.dart`: The widget for a single item in the list.
        * `catalog_image.dart`: A helper widget to display the product image.
    * `main.dart`: The main entry point of the application.

## 🛠️ Tech Stack & Key Packages

* **Flutter:** The core framework for building the cross-platform application.
* **Dart:** The programming language used for Flutter development.
* **VelocityX:** A minimalist Flutter framework for rapid and clean UI development.
* **Google Fonts:** For easily using custom fonts to enhance the UI.

## 🏁 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* Flutter SDK: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

### Installation

1.  Clone the repo
    ```sh
    git clone [https://github.com/your_username/classify.git](https://github.com/your_username/classify.git)
    ```
2.  Navigate to the project directory
    ```sh
    cd classify
    ```
3.  Install packages
    ```sh
    flutter pub get
    ```
4.  Run the app
    ```sh
    flutter run
    ```

## 🌟 Future Goals

* Implement "Add to Order" functionality.
* Create a dedicated "Order Summary" page.
* Add a swipeable image gallery on the product detail page.
* Implement a search feature for the catalog.

## 👨‍💻 Author

**Saksham Kashyap**

* GitHub: [Ecocoder0711](https://github.com/your_username)

