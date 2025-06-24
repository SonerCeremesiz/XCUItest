# XCUITest Sample App

![TestingBot logo](resources/testingbot-logo.png?raw=true "Logo")

This is a simple sample iOS app designed to demonstrate how to perform UI testing using [XCUITest](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/09-ui_testing.html).

The app provides two input fields for entering numbers. When you tap the **Calculate** button, the result field will display the sum of the two numbers.

The project includes a sample XCUITest that automates these steps and verifies the result.

---

## 🚀 Getting Started

### Run in Xcode

1. Open the project in Xcode  
2. From the menu, select **Product** → **Test**

### Run via Command Line

```bash
xcodebuild -project xcuitest-sample.xcodeproj \
  -scheme xcuitest-sample \
  -destination 'platform=iOS Simulator,name=iPhone 13,OS=15.0' test
