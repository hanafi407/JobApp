package com.hanafi.jobapp;

import com.hanafi.jobapp.model.JobPost;
import com.hanafi.jobapp.service.JobService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class JobController {
    private JobService jobService;
    @GetMapping({"/","/home"})
    public String home(){

        return "home";
    }

    @GetMapping("/add-job")
    public String addJob(){
        return "add-job";
    }

    @GetMapping("/all-jobs")
    public String allJobs(Model model){
        List<JobPost> jobs = jobService.getAllJobs();
        model.addAttribute("jobs",jobs);
        return "all-jobs";
    }

    @GetMapping("/contacts")
    public String contacts(){
        System.out.println("contacts");
        return "contacts";
    }

    @PostMapping("/handle-form")
    public String handleForm(JobPost jobPost){
        jobService.addJob(jobPost);
        System.out.println(jobService.getAllJobs());
        return "handle-form";
    }

}
