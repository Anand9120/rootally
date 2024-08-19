# rootally

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
//
Design Choices
Responsive Layout: The layout is designed using the flutter_screenutil package to ensure responsiveness across different screen sizes. This approach maintains the design's integrity on various devices by scaling widgets, padding, and text according to screen dimensions.

Stacking Elements: A Stack widget is used to layer images and text, creating visually engaging and dynamic interfaces. This allows for precise placement of UI elements like images and text overlays, enhancing the user experience.

Navigation and User Interaction: The GestureDetector is used to handle user interactions, such as navigating between screens. This creates an intuitive and interactive flow for users, particularly in moving from the main screen to the detailed entry screen.

Consistent Styling: The design follows a consistent styling approach with the use of the Poppins font, a color palette that includes shades of blue and white, and a combination of bold and regular font weights. This consistency helps maintain a professional and cohesive look throughout the application.

Challenges Faced
Handling Different Screen Sizes: Ensuring the UI looks consistent across multiple screen sizes was a significant challenge. The use of flutter_screenutil helped mitigate this by providing a scalable approach, but fine-tuning elements to look perfect on all devices required additional effort.

Stacked Layout Management: Working with a Stack widget can be tricky, especially when aligning multiple overlapping elements. Ensuring that each element was correctly positioned without overlapping or misalignment required careful management of Positioned widgets and regular testing.

Complex UI Hierarchies: Managing a complex UI hierarchy, especially with nested containers and multiple layers of images and text, made the code more challenging to maintain and debug. Breaking down the UI into smaller, reusable components might help reduce complexity in future iterations.//
