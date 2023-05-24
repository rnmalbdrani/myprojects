package com.example.myapplication;
import  java.util.*;
import androidx.appcompat.app.AppCompatActivity;
import  com.baoyachi.stepview.*;
import com.baoyachi.stepview.bean.StepBean;

import android.os.Bundle;
import android.widget.HorizontalScrollView;

public class MainActivity extends AppCompatActivity {
    private final String[] labels = {"Step 1", "Step 2", "Step 3", "Step 4", "Step 5"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    //    HorizontalScrollView h=findViewById(R.id.step_view);



        HorizontalStepView horizontalStepView = findViewById(R.id.step_view);

        horizontalStepView.setStepViewTexts(new ArrayList<StepBean>(){
        });


//        horizontalStepView
//                .setSteps(new ArrayList<String>() {{
//                    add("First step");
//                    add("Second step");
//                    add("Third step");
//                }})
//                ;
        List<StepBean> stepList = new ArrayList<>();
        stepList.add(new StepBean("Received the problem",1));
        stepList.add(new StepBean("work on it",1));
        stepList.add(new StepBean("problem solved", 1));
        horizontalStepView.setStepViewTexts(stepList);

        // State defaults to NOT_COMPLETED stepList.add(new Step("Amet"));
        // State defaults to NOT_COMPLETED horizontalStepView.setSteps(stepList);
    }
}