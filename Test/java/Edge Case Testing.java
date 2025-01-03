@Test
void testCalculateScoreInvalidAnswers() {
    // Test with invalid answer choices (e.g., non-existent options)
    int score = quizService.calculateScore(1, new String[]{"Z", "X", "Y"});
    assertEquals(0, score);  // Assuming invalid answers give 0 score
}

@Test
void testSaveQuizWithNullValues() {
    // Test saving a quiz with null or missing values
    Quiz newQuiz = new Quiz(0, null);  // Invalid quiz data
    assertThrows(IllegalArgumentException.class, () -> {
        quizDAO.saveQuiz(newQuiz);
    });
}
