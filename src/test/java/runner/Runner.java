package runner;


import io.cucumber.junit.*;
import org.junit.runner.*;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "html:target/cucumber-report.html",
                "me.jvt.cucumber.report.PrettyReports:target/cucumber",
                "rerun:target/rerun.txt"

        },
        features = "src/test/resources/features",
        glue = "stepDefinitions",
        dryRun = false,
        tags = ""

)
public class Runner {


}
