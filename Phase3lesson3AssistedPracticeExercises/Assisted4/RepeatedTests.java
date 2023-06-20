package com.example;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;


import org.junit.jupiter.api.*;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringRunner;
import static org.junit.jupiter.api.Assertions.assertEquals;
 
@DisplayName("JUnit 5 Repeated Tests Example")
@RunWith(SpringRunner.class)
public class RepeatedTests {
         @BeforeAll
            public static void init(){
                System.out.println("Before All init() method called");
            }
             
            @BeforeEach
            public void initEach(){
                System.out.println("Before Each initEach() method called");
            }
         
            @Test
            @DisplayName("Add operation test")
            @RepeatedTest(5)
            void addNumber(TestInfo testInfo) {
                Calculator calculator = new Calculator();
                assertEquals(2, calculator.add(1, 1), "1 + 1 should equal 2");
                System.out.println("===addNumber testcase executed===");
            }
             
            @AfterEach
            public void cleanUpEach(){
                System.out.println("After Each cleanUpEach() method called");
            }
             
            @AfterAll
            public static void cleanUp(){
                System.out.println("After All cleanUp() method called");
            }
}
