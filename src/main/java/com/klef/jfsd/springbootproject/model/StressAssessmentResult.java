package com.klef.jfsd.springbootproject.model;

public class StressAssessmentResult {
    private int totalScore;
    private String stressLevel;
    private String advice;

    public StressAssessmentResult(int totalScore, String stressLevel, String advice) {
        this.totalScore = totalScore;
        this.stressLevel = stressLevel;
        this.advice = advice;
    }

    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }

    public String getStressLevel() {
        return stressLevel;
    }

    public void setStressLevel(String stressLevel) {
        this.stressLevel = stressLevel;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }
}