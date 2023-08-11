package org.example;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

//tags AND = {"@s1","@s2"}, OR = {"@s1,@s2"}, Combining OR and AND = {"@s1,@s2,@s3","~@s4"}

@KarateOptions(
//        features = "classpath:org/example/Karate_Script.feature"
//    features = "classpath:org/example/Karate_Api.feature"
//    ,tags = {"@headers"}

        features = "classpath:org/example/Karate_Chrome.feature"
    ,tags = {"@Demo"}
)
@RunWith(Karate.class)
public class TestRunner {

}
