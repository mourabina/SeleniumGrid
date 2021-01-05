package web.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePage {

	@FindBy(xpath = "//a[contains(text(),'Home')]")
	private WebElement menuHome;

	@FindBy(xpath = "//a[contains(text(),'Contas')]")
	private WebElement menuContas;

	@FindBy(xpath = "//a[contains(text(),'Criar Movimentação')]")
	private WebElement menuCriarMovimentacao;

	@FindBy(xpath = "//a[contains(text(),'Resumo Mensal')]")
	private WebElement menuRsumoMensal;

	@FindBy(xpath = "//a[contains(text(),'Adicionar')]")
	private WebElement subMenuAdicionar;

	@FindBy(xpath = "//a[contains(text(),'Listar')]")
	private WebElement subMenuListar;

	@FindBy(xpath = "//div[@class='alert alert-success']")
	private WebElement msgSucesso;

	public HomePage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public WebElement getMenuHome() {
		return menuHome;
	}

	public WebElement getMenuContas() {
		return menuContas;
	}

	public WebElement getMenuCriarMovimentacao() {
		return menuCriarMovimentacao;
	}

	public WebElement getMenuRsumoMensal() {
		return menuRsumoMensal;
	}

	public WebElement getSubMenuAdicionar() {
		return subMenuAdicionar;
	}

	public WebElement getSubMenuListar() {
		return subMenuListar;
	}

	public WebElement getMsgSucesso() {
		return msgSucesso;
	}

}
