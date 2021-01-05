package web.pages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {

	@FindBy(xpath = "//a[text()='Novo usuário?']")
	private WebElement menuNovoUsuario;

	@FindBy(id = "email")
	private WebElement inputEmail;

	@FindBy(id = "senha")
	private WebElement inputSenha;

	@FindBy(xpath = "//button[text()='Entrar']")
	private WebElement btnEntrar;

	@FindBy(xpath = "//div[contains(@class,'alert alert')]")
	private List<WebElement> listaMensagens;

	public LoginPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public WebElement getMenuNovoUsuario() {
		return menuNovoUsuario;
	}

	public WebElement getInputEmail() {
		return inputEmail;
	}

	public WebElement getInputSenha() {
		return inputSenha;
	}

	public WebElement getBtnEntrar() {
		return btnEntrar;
	}

	public List<WebElement> getListaMensagens() {
		return listaMensagens;
	}

}
