import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class QuizServiceTest {
    private QuizService quizService;

    @BeforeEach
    void setUp() {
        quizService = new QuizService();
    }

    @Test
    void testGetQuizByIdValid() {
        // Test with a valid quiz ID
        Quiz result = quizService.getQuizById(1);
        assertNotNull(result);
        assertEquals(1, result.getId());
        assertEquals("Sample Quiz", result.getName());
    }

    @Test
    void testGetQuizByIdInvalid() {
        // Test with an invalid quiz ID
        Quiz result = quizService.getQuizById(-1);
        assertNull(result);
    }

    @Test
    void testCalculateScore() {
        // Test score calculation with valid answers
        int score = quizService.calculateScore(1, new String[]{"A", "B", "C"});
        assertEquals(80, score);  // Assuming the score is 80%
    }

    @Test
    void testCalculateScoreEmptyAnswers() {
        // Test with empty answers list (edge case)
        int score = quizService.calculateScore(1, new String[]{});
        assertEquals(0, score);
    }
}
