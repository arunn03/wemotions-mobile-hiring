# WeMotions

## Building

To build and run the app on your device, do the following:

-   [Install Flutter](https://flutter.dev/docs/get-started/install/) by following the instructions on their website.
-   Fork/clone this repo to your computer using `https://github.com/FlicLabs/wemotions-mobile.git`.
-   Connect your devices/emulators and run the app using `flutter run` in the root of the project directory.
# Wemotions Mobile Hiring: Flutter Developer Assignment

---

### **Objective:**  
Implement a seamless **4D scrolling** experience in the Wemotions mobile app, enabling users to interact fluidly with video feeds and their video replies.

---

### **Overview:**  
The assignment focuses on integrating two APIs to dynamically display video feeds and their replies as videos, implementing immersive 4D scrolling (vertical + nested scrolls), with an emphasis on performance and UX.

---

### **Resources:**

- **API Endpoints:**
  - `https://api.wemotions.app/feed?page=1` — Fetch main video feeds.
  - `https://api.wemotions.app/posts/{id}/replies` — Fetch video replies per post.

- **Visual & Concept References:**
  - Flow diagram and UI mockups on Excalidraw:  
    [Excalidraw Visual Flow](https://excalidraw.com/#json=NYW7oKLeXbjnMtQgm6iCk,akFQaE3U5-lOCNcYmAYHgA)
  - Related images and video examples:  
    [Google Photos Folder](https://photos.app.goo.gl/zeEeBYYmPxtqD6Gd6)

---

### **Assignment Details:**

#### 1. API Integration
- Fetch and display video feeds dynamically from the feed API.
- On video tap, fetch the corresponding video replies and display them inline below the main video.
- Use **lazy loading** to fetch feeds and replies on demand, improving performance.

#### 2. 4D Scrolling Implementation
- Implement vertical scrolling for navigating the main video feed.
- Implement horizontal and/or vertical nested scrolling for video replies under each main video.
- Enable interactive video playback controls during scroll (play, pause).
- Ensure smooth, immersive transitions between main videos and their replies.

#### 3. Performance Optimization
- Optimize rendering to avoid lag, freezing, or heavy memory use.
- Use efficient state management to prevent unnecessary re-renders.
- Load video data incrementally as users scroll.

#### 4. UI/UX Consistency
- Match the app’s current design style and visual language.
- Clearly distinguish main videos from replies.
- Ensure smooth user experience with intuitive controls and gestures.

#### 5. Error Handling
- Gracefully handle API failures or absence of replies.
- Display meaningful fallback messages or UI states.

---

### **Submission Instructions:**

1. Fork and clone the Wemotions GitHub repository provided.
2. Implement the 4D scrolling and video-to-video reply features within the existing codebase.
3. Thoroughly test on Android and iOS devices for stability and performance.
4. Raise a pull request with:
   - Detailed description of your implementation.
   - Screenshots or screen recordings showcasing the feature.
5. Attach a working APK file to the pull request for review.

---

### **Evaluation Criteria:**

| Criterion           | Description                                               |
|---------------------|-----------------------------------------------------------|
| **Functionality**   | Smooth, bug-free interaction with feed and replies videos.|
| **Performance**    | No lag, optimized loading and rendering.                   |
| **User Experience**| Immersive, intuitive 4D scrolling with easy navigation.   |
| **Code Quality**   | Clean, modular, maintainable, and well-documented code.    |

---

Please refer to the visual flow and UI wireframes on [Excalidraw](https://excalidraw.com/#json=NYW7oKLeXbjnMtQgm6iCk,akFQaE3U5-lOCNcYmAYHgA) and example images/videos in the [Google Photos folder](https://photos.app.goo.gl/zeEeBYYmPxtqD6Gd6) for better context on the expected experience and design style.

---

If you need further clarifications or assistance, feel free to ask!
