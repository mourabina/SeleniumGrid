package web.pages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CriarContaPage {

	@FindBy(id = "nome")
	private WebElement inputNome;

	@FindBy(xpath = "//button[text()='Salvar']")
	private WebElement btnSalvar;

	@FindBy(xpath = "//div[contains(@class,'alert alert')]")
	private List<WebElement> listaMensagens;

	public CriarContaPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public WebElement getInputNome() {
		return inputNome;
	}

	public WebElement getBtnSalvar() {
		return btnSalvar;
	}

	public List<WebElement> getListaMensagens() {
		return listaMensagens;
	}

}
