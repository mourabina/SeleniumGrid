package web.pages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ResumoMensalPage {

	@FindBy(id = "mes")
	private WebElement selectMes;

	@FindBy(id = "ano")
	private WebElement selectAno;

	@FindBy(id = "//input[@value='Buscar']")
	private WebElement btnBuscar;

	@FindBy(xpath = "//div[contains(@class,'alert alert')]")
	private List<WebElement> listaMensagens;

	public ResumoMensalPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public List<WebElement> getListaMensagens() {
		return listaMensagens;
	}

	public WebElement getSelectMes() {
		return selectMes;
	}

	public WebElement getSelectAno() {
		return selectAno;
	}

	public WebElement getBtnBuscar() {
		return btnBuscar;
	}

}
