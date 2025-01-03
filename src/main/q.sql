CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    user_type INT DEFAULT 2, -- 1: Admin, 2: User
    PRIMARY KEY (user_id)
);

CREATE TABLE quizzes (
    quiz_id INT NOT NULL AUTO_INCREMENT,
    quiz_title VARCHAR(200) NOT NULL,
    description TEXT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (quiz_id),
    FOREIGN KEY (created_by) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE questions (
    question_id INT NOT NULL AUTO_INCREMENT,
    quiz_id INT,
    question_text TEXT NOT NULL,
    option_a VARCHAR(200),
    option_b VARCHAR(200),
    option_c VARCHAR(200),
    option_d VARCHAR(200),
    correct_option CHAR(1) NOT NULL, -- 'A', 'B', 'C', or 'D'
    PRIMARY KEY (question_id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id) ON DELETE CASCADE
);

CREATE TABLE user_responses (
    response_id INT NOT NULL AUTO_INCREMENT,
    user_id INT,
    quiz_id INT,
    question_id INT,
    selected_option CHAR(1),
    is_correct BOOLEAN,
    PRIMARY KEY (response_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(question_id) ON DELETE CASCADE
);

CREATE TABLE results (
    result_id INT NOT NULL AUTO_INCREMENT,
    user_id INT,
    quiz_id INT,
    score INT,
    total_questions INT,
    attempted INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (result_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id) ON DELETE CASCADE
);

INSERT INTO users (username, password, email, user_type) VALUES
('admin', 'Admin123', 'admin@example.com', 1),
('user1', 'User123', 'user1@example.com', 2),
('user2', 'User234', 'user2@example.com', 2);

INSERT INTO quizzes (quiz_title, description, created_by) VALUES
('General Knowledge Quiz', 'Test your general knowledge.', 1),
('Science Quiz', 'Challenge your science skills.', 1);

INSERT INTO questions (quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
(1, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'C'),
(1, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'B'),
(2, 'What is the chemical symbol for water?', 'O2', 'H2O', 'CO2', 'NaCl', 'B');

INSERT INTO user_responses (user_id, quiz_id, question_id, selected_option, is_correct) VALUES
(2, 1, 1, 'C', TRUE),
(2, 1, 2, 'B', TRUE),
(3, 2, 3, 'B', TRUE);

INSERT INTO results (user_id, quiz_id, score, total_questions, attempted) VALUES
(2, 1, 2, 2, 2),
(3, 2, 1, 1, 1);
