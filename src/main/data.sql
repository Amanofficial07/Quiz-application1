-- Insert default categories for quizzes
INSERT INTO categories (category_id, category_name) 
VALUES 
(1, 'General Knowledge'), 
(2, 'Science'), 
(3, 'Math'), 
(4, 'History') 
ON CONFLICT DO NOTHING;

-- Insert default roles for user management
INSERT INTO roles (role_id, role_name) 
VALUES 
(1, 'Admin'), 
(2, 'User') 
ON CONFLICT DO NOTHING;

-- Insert default difficulty levels for quizzes
INSERT INTO difficulty_levels (difficulty_id, level_name) 
VALUES 
(1, 'Easy'), 
(2, 'Medium'), 
(3, 'Hard') 
ON CONFLICT DO NOTHING;

-- Insert initial configurations for application settings
INSERT INTO configurations (config_id, config_key, config_value) 
VALUES 
(0, 'max_attempts', '3'), 
(1, 'time_limit', '30') 
ON CONFLICT DO NOTHING;

-- Insert a sample admin user
INSERT INTO users (user_id, username, email, password, role_id) 
VALUES 
(1, 'admin', 'admin@example.com', 'Admin@123', 1) 
ON CONFLICT DO NOTHING;

-- Insert sample quizzes
INSERT INTO quizzes (quiz_id, quiz_title, category_id, difficulty_id, time_limit) 
VALUES 
(1, 'General Knowledge Quiz', 1, 1, 15), 
(2, 'Science Basics', 2, 2, 20) 
ON CONFLICT DO NOTHING;

-- Insert sample questions
INSERT INTO questions (question_id, quiz_id, question_text) 
VALUES 
(1, 1, 'What is the capital of France?'), 
(2, 1, 'Who discovered gravity?') 
ON CONFLICT DO NOTHING;

-- Insert sample options for questions
INSERT INTO options (option_id, question_id, option_text, is_correct) 
VALUES 
(1, 1, 'Paris', true), 
(2, 1, 'London', false), 
(3, 2, 'Newton', true), 
(4, 2, 'Einstein', false) 
ON CONFLICT DO NOTHING;
