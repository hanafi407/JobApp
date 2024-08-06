package com.hanafi.jobapp.service;

import com.hanafi.jobapp.model.JobPost;
import com.hanafi.jobapp.repo.JobRepo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class JobService {
    private JobRepo jobRepo;

    public void addJob(JobPost jobPost){
        jobRepo.addJob(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return jobRepo.getAllJobs();
    }
}
