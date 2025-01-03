import com.quizapp.infrastructure.LocalDateTimeConverter;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import static junit.framework.TestCase.assertNull;
import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
public class QuizConfigurationTest {

    private LocalDateTimeConverter converter;

    @Before
    public void setUp() {
        converter = new LocalDateTimeConverter();
    }

    @Test
    public void givenValidLocalDateTimeShouldReturnCorrectTimestamp() {
        // Arrange
        LocalDateTime localDateTime = LocalDateTime.now();
        Timestamp expectedTimestamp = Timestamp.valueOf(localDateTime.withNano(0)); // Ignore nanoseconds

        // Act
        Timestamp result = converter.convertToDatabaseColumn(localDateTime);

        // Assert
        assertThat(result).isEqualTo(expectedTimestamp);
    }

    @Test
    public void givenNullLocalDateTimeShouldReturnNullTimestamp() {
        // Act & Assert
        assertNull(converter.convertToDatabaseColumn(null));
    }

    @Test
    public void givenValidTimestampShouldReturnCorrectLocalDateTime() {
        // Arrange
        LocalDateTime expectedLocalDateTime = LocalDateTime.now();
        Timestamp timestamp = Timestamp.valueOf(expectedLocalDateTime);

        // Act
        LocalDateTime result = converter.convertToEntityAttribute(timestamp);

        // Assert
        assertThat(result).isEqualTo(expectedLocalDateTime);
    }

    @Test
    public void givenNullTimestampShouldReturnNullLocalDateTime() {
        // Act & Assert
        assertNull(converter.convertToEntityAttribute(null));
    }
}
