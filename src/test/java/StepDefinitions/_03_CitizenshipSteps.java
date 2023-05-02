package StepDefinitions;

import Pages.DialogContent;
import Pages.Navigation;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class _03_CitizenshipSteps {

    DialogContent dc = new DialogContent();
    Navigation nv = new Navigation();

    @Given("Navigate to Citizenship page")
    public void navigateToCitizenshipPage() {
        nv.clickMethod(nv.getSetupBtn());
        nv.clickMethod(nv.getParameterBtn());
        nv.clickMethod(nv.getCitizenshipButton());
    }

    @Then("Enter citizenship name as {string} and citizenship short name as {string}")
    public void enterCitizenshipNameAsAndCitizenshipShortNameAs(String citizenshipName, String citizenshipShortName) {
        dc.sendKeysMethod(dc.getFormNameInput(), citizenshipName);
        dc.sendKeysMethod(dc.getCitizenshipShortName(), citizenshipShortName);
    }

    @And("Search for citizenship with name as {string} and short name as {string}")
    public void searchForCitizenshipWithNameAsAndShortNameAs(String citizenshipName, String citizenshipShortName) {
        dc.sendKeysMethod(dc.getNameSearch(), citizenshipName);
        dc.sendKeysMethod(dc.getCitizenshipShortNameSearch(), citizenshipShortName);
    }

    @And("Delete citizenship")
    public void deleteCitizenship() {
        dc.clickMethod(dc.getSearchBtn());
        dc.wait.until(ExpectedConditions.numberOfElementsToBeLessThan(By.cssSelector("ms-delete-button[class='ng-star-inserted']"), 10));
        dc.clickMethod(dc.getDeleteButton());
        dc.clickMethod(dc.getConfirmDelete());
    }
}
