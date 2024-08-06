package com.hanafi.jobapp.repo;

import com.hanafi.jobapp.model.JobPost;
import com.hanafi.jobapp.model.ListJobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class JobRepo {
    List<JobPost> jobs = new ListJobPost().jobs;

    public void addJob(JobPost jobPost){
        jobs.add(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return jobs;
    }
}
