# WeMotions

## Building

To build and run the app on your device, do the following:

-   [Install Flutter](https://flutter.dev/docs/get-started/install/) by following the instructions on their website.
-   Fork/clone this repo to your computer using `https://github.com/FlicLabs/wemotions-mobile.git`.
-   Connect your devices/emulators and run the app using `flutter run` in the root of the project directory.

# Wemotions Mobile Hiring

## Flutter Developer Assignment: Implement 4D Scrolling for Video-to-Video App

### Objective

Enhance the Wemotions mobile app by implementing a dynamic 4D scrolling experience that enables users to seamlessly browse video feeds and their video replies. The goal is to create an immersive and smooth scrolling interface where users can easily navigate through videos and their corresponding video replies.

### Reference Links

- **Nested Pagination Flowchart:**  
  ![image](https://github.com/user-attachments/assets/cb3bc684-e808-486e-aeca-74904ceb6867)

- **4D Scrolling Explanation Video:**  
  [![Video Preview](https://github.com/user-attachments/assets/2ef5adba-29a3-49d3-afe0-3dbf2db2f812)](https://drive.google.com/file/d/1wc2NeQ3_Wu1yv_O_hec9HtkO-58G7HuQ/preview?usp=sharing)

### Tasks

#### 1. API Integration

- Use the following endpoints:

  - `https://api.wemotions.app/feed?page=1` — Fetch the list of main video feeds.  
  - `https://api.wemotions.app/posts/{id}/replies` — Fetch video replies linked to a specific video post.

- Requirements:

  - Dynamically display video feeds from the API.  
  - On tapping a video, fetch and display its video replies beneath it.  
  - Implement lazy loading for both video feeds and replies to optimize data usage and performance.

#### 2. 4D Scrolling Implementation

- Create a smooth, immersive 4D scrolling experience:

  - **Vertical Scrolling:** Navigate through the list of main video feeds.  
  - **Nested Scrolling:** Allow vertical or horizontal scrolling through video replies under each main video.  
  - **Video Interactivity:** Enable play/pause functionality for videos during scrolling and user interaction.

#### 3. Performance Optimization

- Ensure efficient rendering of both video feeds and replies to prevent lag or stutters.  
- Apply lazy loading techniques to fetch video data only when necessary, reducing memory usage and network overhead.

#### 4. UI/UX Consistency

- Align all video elements with the app’s existing design and visual style.  
- Clearly distinguish main videos from their replies and enable smooth transitions between them.

#### 5. Error Handling

- Gracefully handle API failures or cases where no video replies are available.  
- Provide appropriate fallback UI or messages in such scenarios.

### Dot (.) Indicators — What Do They Mean?

Each dot represents a **page of videos or replies** — think of them as “batches” of 5 videos each.

- The letter **“H”** means **Home** or the **main feed**.
- The **number inside the dots** shows how many more videos or replies are left to load beyond what you see now.
- A **filled or crossed dot** shows the **current page** being viewed or loaded.
- These dots help users see how much content is there and track where they are while browsing.

### Submission Instructions

1. **GitHub Repository Link**  
   Please share your GitHub repository link containing your implementation so our engineering team can review the code quality and overall solution.

2. **Introductory Video**  
   Submit a short video (around 30 seconds) introducing yourself to help our HR team verify your profile.

3. **Demo Video**  
   Provide a 2-minute video demonstrating the app with the 4D scrolling feature implemented, allowing our HR team to evaluate your submission before forwarding it to the technical team.

4. **Built APK**  
   Include the built APK file so our engineers can test the app and validate the implementation’s functionality.

### Evaluation Criteria

- **Functionality:** All assigned features work correctly without crashes or errors.  
- **Performance:** Scrolling is smooth, and video data loads efficiently.  
- **User Experience:** The app delivers an immersive, responsive, and intuitive navigation experience.  
- **Code Quality:** Code is clean, modular, well-documented, and follows best practices.
