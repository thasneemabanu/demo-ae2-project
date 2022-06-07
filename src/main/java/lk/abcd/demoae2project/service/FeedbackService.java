package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Feedback;
import lk.abcd.demoae2project.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepository feedbackRepositoryobject;

    public List<Feedback> findAll(){
        return feedbackRepositoryobject.findAll();
    }

    public Optional<Feedback> findById(int id){
        return feedbackRepositoryobject.findById(id);
    }

    public Feedback saveFeedback(Feedback feedbackobject){
        return feedbackRepositoryobject.save(feedbackobject);
    }
    public Feedback updatefeedback(int id, Feedback feedback) {
        Feedback updatefeedback = feedbackRepositoryobject.findById(id).orElse(null);
        if (updatefeedback != null){
            updatefeedback.setName(feedback.getName());
            updatefeedback.setEmail(feedback.getEmail());
            updatefeedback.setMessage(feedback.getMessage());
            updatefeedback.setRatingsforthehotel(feedback.getRatingsforthehotel());
            feedbackRepositoryobject.save(updatefeedback);
        }
        return updatefeedback;

    }
    public void deleteById(int id){
        feedbackRepositoryobject.deleteById(id);
    }

}
