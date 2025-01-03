#Online Quiz Application
A simple CRUD app that allows users to take quizzes, track scores, and manage quiz-related activities. Designed for online quizzes with a user-friendly interface.

##Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Architecture Overview](#architecture-overview)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Outcome](#outcome)
- [Project Structure](#project-structure)

Features
-*Quiz Taking*: Users can take quizzes and answer multiple-choice questions.
-*User Authentication*: Provides user registration and login functionality.
-*Real-time Score Display*: Displays scores in real-time after quiz completion.
-*Admin Dashboard*: Admins can create, edit, and delete quizzes and view participant results.
-*Question Upload*: Allows admins to upload new questions for quizzes.

- *Java Server Application*: Built using the Spring Framework, ensuring modularity and flexibility.
- *Template Engine: Serves HTML content dynamically using the **Thymeleaf* template engine.
- *Static Content*: Accessed directly via predefined URLs.
- *REST API*: Handles dynamic data exchange, with JSON used as the data format for communication.
- *Relational Database: Application data is stored in a relational database, with **PostgreSQL* as the primary option. For demonstration purposes, *H2* is used due to its lightweight nature and in-memory capabilities.

### Frontend Architecture
The frontend is designed to provide a seamless user experience, with the following core components:

- *Backend Integration*: Communicates with the backend through asynchronous JSON messages.
- *Static HTML*: Serves foundational data as static HTML pages.
- *Event Handling: Uses **jQuery* for efficient event handling and asynchronous communication with the backend.
- *User Interface: Built using the **Bootstrap framework*, offering a responsive and visually appealing design.
- *Data Visualization: Leverages **Chart.js* to create dynamic and interactive parking usage diagrams.


## Technologies Used

### Backend Technologies
- *Java*  
- *Spring Boot*  
- *Spring MVC*  
- *Thymeleaf*  
- *Relational Database*: PostgreSQL  

### Frontend Technologies
- *HTML/CSS/JavaScript*  
- *Bootstrap*  
- *jQuery*  
- *Chart.js*  

### Development Cycle Tools
- *Jenkins*  
- *GitHub*  
- *Google Cloud*  
- *YouTrack*  
- *IntelliJ IDEA*


## Installation

To set up the project locally:

### Clone the Repository
bash
# Start: Clone repository
git clone https://github.com/
cd https://github.com/Amanofficial07/Quiz-application1
# End: Clone repository

### Install Dependencies
bash
npm install

### Setup Instructions

### Step 1: Setup Environment Variables
1. Copy .env.example to .env.
2. Configure the following in the .env file:
   - *Database settings*
   - *JWT secret*

### Step 2: Setup the Database
1. Create a new database named my_db.
2. Run the SQL commands from src/database/schema.sql to set up the tables.
3. Ensure your .env configuration matches your database setup.


### Run the Project
bash
npm start

The server should start on http://localhost:3306 by default.



## Outcome
 ![Login form](file:///D:/My/Quiz-Application-Using-Java-master/Quiz-Application-Using-Java-master/Main/HTML/login.html)
  ![User profile](file:///D:/My/Quiz-Application-Using-Java-master/Quiz-Application-Using-Java-master/Main/HTML/profile.html)
   ![Registration Form](file:///D:/My/Quiz-Application-Using-Java-master/Quiz-Application-Using-Java-master/Main/HTML/registration.html)

## Project Structure
```plaintext

OnlineQuizApp/
├── gradle/                        # Gradle wrapper files
│   ├── wrapper/
│   ├── gradle-wrapper.jar
│   └── gradle-wrapper.properties
├── images/                         # Project images
│   ├── quiz_home.png
│   ├── login_screen.png
│   ├── quiz_question.png
│   ├── admin_dashboard.png
│   └── result_page.png
├── src/                            # Application source code
│   ├── main/
│   │   ├── java/                   # Backend Java code (Spring Boot application)
│   │   │   └── com/
│   │   │       └── quiz/
│   │   │           ├── quiz/       # Quiz-related files
│   │   │           │   ├── Quiz.java
│   │   │           │   ├── QuizController.java
│   │   │           │   └── QuizRepository.java
│   │   │           ├── user/       # User-related files
│   │   │           │   ├── User.java
│   │   │           │   ├── UserController.java
│   │   │           │   └── UserRepository.java
│   │   │           ├── result/     # Result-related files
│   │   │           │   ├── Result.java
│   │   │           │   └── ResultController.java
│   │   │           ├── utils/      # Utility classes
│   │   │           │   ├── DatabaseConnUtils.java
│   │   │           │   └── QuizUtils.java
│   │   │           ├── model/      # Core entity models
│   │   │           │   ├── Question.java
│   │   │           │   └── Answer.java
│   │   │           └── HTMLProviderController.java # Controls dynamic HTML generation
│   │   ├── resources/
│   │   │   ├── static/               # Frontend resources (static assets)
│   │   │   │   ├── css/              # CSS files
│   │   │   │   │   ├── style.css
│   │   │   │   ├── js/               # JavaScript files
│   │   │   │       ├── index.js
│   │   │   │       ├── quiz.js
│   │   │   │       └── result.js
│   │   │   ├── templates/           # Thymeleaf templates for dynamic views
│   │   │   │   ├── fragments/
│   │   │   │   │   └── layout.html
│   │   │   │   ├── index.html
│   │   │   │   ├── quiz.html
│   │   │   │   ├── result.html
│   │   │   ├── application.properties # Spring Boot application configuration
│   │   │   ├── data.sql              # Initial data for database
│   └── test/                        # Unit and integration tests
│       └── java/                    # Test files
│           ├── QuizTest.java
│           ├── UserTest.java
│           └── ResultTest.java
├── gradlew                          # Gradle wrapper script for Unix-based systems
├── gradlew.bat                      # Gradle wrapper script for Windows
├── build.gradle                     # Gradle build file
├── settings.gradle                  # Gradle settings
├── README.md                        # Project documentation
└── web.xml                          # Web application deployment descriptor
