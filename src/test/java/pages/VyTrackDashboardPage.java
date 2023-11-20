package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class VyTrackDashboardPage {

    public VyTrackDashboardPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }



    @FindBy(xpath = "//li[@id='user-menu']/a")
    public WebElement fullName;

    @FindBy(linkText = "Logout")
    public WebElement logOutLink;

    public void logout(){
        fullName.click();
        logOutLink.click();
    }
}
