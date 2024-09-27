package com.automation.runner;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;


public class TestRunner {
    //Junit Runner
    @Test
    public void runSuite(){
        Karate.run("classpath:features").parallel(2);
        //run instance method it return object of current class
        //To execute feature file parallely then create runner files ,
        // ie how many feature files we want to execute create that number of runner files
        //And goto pom.xml and  <parallel><thread-count>2</thread-count></>
    }

    //Karate Runner
    @Karate.Test
    Karate testSuite()
    {
        return Karate.run("classpath:features")
                     .outputCucumberJson(true)
                     .reportDir("Cucumber-Karate");
    }
}
