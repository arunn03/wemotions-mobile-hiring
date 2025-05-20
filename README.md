# WeMotions

## Building

To build and run the app on your device, do the following:

-   [Install Flutter](https://flutter.dev/docs/get-started/install/) by following the instructions on their website.
-   Fork/clone this repo to your computer using `https://github.com/FlicLabs/wemotions-mobile.git`.
-   Connect your devices/emulators and run the app using `flutter run` in the root of the project directory.
  
# wemotions-mobile-hiring

### **Flutter Developer Assignment: Implement 4D Scrolling for Video-to-Video App**

#### **Objective:**

Enhance the Wemotions mobile app by implementing a dynamic 4D scrolling experience that allows users to interact seamlessly with video feeds and their video replies. The goal is to create an immersive experience where users can smoothly scroll through videos and view their corresponding replies, which are also videos.

---

#### **Reference Links:**

- Excalidraw Diagram:  
  [https://excalidraw.com/#json=NYW7oKLeXbjnMtQgm6iCk,akFQaE3U5-lOCNcYmAYHgA](https://excalidraw.com/#json=NYW7oKLeXbjnMtQgm6iCk,akFQaE3U5-lOCNcYmAYHgA)

- Wemotions Team/Project Photos and Videos:  
  [https://photos.app.goo.gl/zeEeBYYmPxtqD6Gd6](https://photos.app.goo.gl/zeEeBYYmPxtqD6Gd6)

---

#### **Tasks:**

1. **API Integration:**

   * **Endpoints to Use:**

     * `https://api.wemotions.app/feed?page=1` — Fetches the list of video feeds (main videos).  
     * `https://api.wemotions.app/posts/{id}/replies` — Fetches video replies associated with a specific video post.

   * **Expected Outcome:**

     * Display video feeds dynamically.  
     * When a user taps on a video, fetch the replies (which are also videos) and show them seamlessly beneath the main video.  
     * Implement lazy loading for both video feeds and video replies to optimize the experience.

2. **4D Scrolling Implementation:**

   * Implement a smooth, immersive 4D scrolling experience, where:

     * **Vertical Scrolling:** Navigate through the video feeds.  
     * **Horizontal/Vertical Scrolling:** Scroll through the video replies beneath each main video.  
     * **Video Interactivity:** Allow users to play or pause videos when scrolling and interacting with them.

3. **Performance Optimization:**

   * Ensure that both the video feed and video replies are rendered efficiently to minimize app lag.  
   * Implement lazy loading techniques to ensure that video data (both feeds and replies) is fetched only when needed.

4. **UI/UX Consistency:**

   * Maintain consistency with the app's design, ensuring the video elements align with the overall aesthetic of the app.  
   * Ensure that the user can easily identify the main video and its replies and can smoothly transition between the two.

5. **Error Handling:**

   * Properly handle errors such as failed API calls or no video replies, providing a graceful fallback in case of issues.

---

#### **How to Submit the Project:**

1. **Fork the GitHub Repository:**

   * Fork and clone the provided GitHub repository. The repository already includes several features, so your task is to implement the 4D scrolling and video-to-video interaction functionality.

2. **Raise a Pull Request:**

   * Once the feature is implemented, test it thoroughly to ensure no bugs or crashes occur.  
   * Raise a pull request with a detailed description of the changes made (e.g., "Implemented 4D scrolling with video replies integration").

3. **Submit the APK:**

   * Build and attach the APK to the pull request.  
   * Ensure that the APK is free of bugs and works properly on both Android and iOS devices.

---

#### **Evaluation Criteria:**

* **Functionality:** All features must work seamlessly, with no crashes or errors during interaction.  
* **Performance:** The scrolling experience should be smooth, without lag, and should efficiently load video data.  
* **User Experience:** The app should feel immersive, responsive, and intuitive, with smooth transitions between videos and their replies.  
* **Code Quality:** The code should be clean, well-organized, and follow best practices.
