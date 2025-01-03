import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class QuizIntegrationTest {
    private QuizService quizService;
    private QuizDAO quizDAO;

    @BeforeEach
    void setUp() {
        quizDAO = new QuizDAO();
        quizService = new QuizService(quizDAO);
    }

    @Test
    void testCreateQuizAndGetScore() {
        // Test creating a quiz and calculating score in one test case
        Quiz newQuiz = new Quiz(3, "New Integration Quiz");
        quizDAO.saveQuiz(newQuiz);

        Quiz result = quizService.getQuizById(3);
        assertNotNull(result);
        assertEquals("New Integration Quiz", result.getName());

        int score = quizService.calculateScore(3, new String[]{"A", "B", "C"});
        assertEquals(80, score);  // Assuming the score is 80%
    }
}
