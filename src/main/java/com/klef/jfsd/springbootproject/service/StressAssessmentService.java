package com.klef.jfsd.springbootproject.service;

import com.klef.jfsd.springbootproject.model.StressAssessmentResult;
import org.springframework.stereotype.Service;

@Service
public class StressAssessmentService {

    public StressAssessmentResult calculateStressLevel(int q1, int q2, int q3) {
        int totalScore = q1 + q2 + q3;

        String level;
        String advice;

        if (totalScore <= 5) {
            level = "Low Stress";
            advice = "Great! Keep maintaining your calm and balance.";
        } else if (totalScore <= 8) {
            level = "Moderate Stress";
            advice = "Take some time to relax and engage in stress-relief activities.";
        } else {
            level = "High Stress";
            advice = "Consider seeking professional help and prioritize self-care.";
        }

        return new StressAssessmentResult(totalScore, level, advice);
    }
}