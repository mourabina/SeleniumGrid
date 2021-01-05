package web.pages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CriarNovoUsuarioPage {

	@FindBy(xpath = "//input[@placeholder='Nome']")
	private WebElement inputNome;

	@FindBy(xpath = "//input[@placeholder='Email']")
	private WebElement inputEmail;

	@FindBy(xpath = "//input[@placeholder='Password']")
	private WebElement inputSenha;

	@FindBy(xpath = "//input[@value='Cadastrar']")
	private WebElement btnCadastrar;

	@FindBy(xpath = "//div[contains(@class,'alert alert')]")
	private List<WebElement> listaMensagens;

	public CriarNovoUsuarioPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public WebElement getInputNome() {
		return inputNome;
	}

	public WebElement getInputEmail() {
		return inputEmail;
	}

	public WebElement getInputSenha() {
		return inputSenha;
	}

	public WebElement getBtnCadastrar() {
		return btnCadastrar;
	}

	public List<WebElement> getListaMensagens() {
		return listaMensagens;
	}

}
