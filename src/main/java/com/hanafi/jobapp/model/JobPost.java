package com.hanafi.jobapp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class JobPost {
    private int id;
    private String profile;
    private String description;
    private int experience;
    private List<String> languages;
}
