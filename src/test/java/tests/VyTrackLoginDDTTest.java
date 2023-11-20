package tests;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pages.VyTrackDashboardPage;
import pages.VyTrackLoginPage;
import utilities.ConfigurationReader;
import utilities.Driver;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class VyTrackLoginDDTTest {

    VyTrackLoginPage loginPage = new VyTrackLoginPage();
    VyTrackDashboardPage dashboardPage = new VyTrackDashboardPage();


    @Before
    public void setUp() throws InterruptedException {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }

    @After
    public void tearDown(){
        Driver.closeDriver();
    }

    @Test
    public void loginDDT() throws IOException {
        String filePath = "VyTrackQa2Users.xlsx";
        FileInputStream fileInputStream = new FileInputStream(filePath);
        XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
        XSSFSheet sheet = workbook.getSheet("Sheet1");

        for (int i = 1; i <= sheet.getLastRowNum(); i++) {

            String userName = sheet.getRow(i).getCell(0).toString();
            String password = sheet.getRow(i).getCell(1).toString();
            String firstName = sheet.getRow(i).getCell(2).toString();
            String lastName = sheet.getRow(i).getCell(3).toString();

            loginPage.login(userName,password);
            WebDriverWait wait = new WebDriverWait(Driver.getDriver(),10);
            WebElement loaderMask = Driver.getDriver().findElement(By.cssSelector("div[class='loader-mask shown']"));
            wait.until(ExpectedConditions.invisibilityOf(loaderMask));

            String actualFullname = dashboardPage.fullName.getText();

            XSSFCell resultCell = sheet.getRow(i).getCell(4);

            if (actualFullname.contains(firstName) && actualFullname.contains(lastName)){
                System.out.println("PASS");
                resultCell.setCellValue("PASS");
            }else {
                System.out.println("FAIL");
                resultCell.setCellValue("FAIL");
            }

            dashboardPage.logout();

        }

        FileOutputStream out = new FileOutputStream(filePath);
        workbook.write(out);

        fileInputStream.close();
        out.close();
        workbook.close();
    }

}
