package web.funcionalidade;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import commons.BaseTest;
import commons.funcionalidade.VariaveisEstaticas;
import web.pages.HomePage;

public class HomeFuncionalidade extends BaseTest {

	private HomePage home;

	public HomeFuncionalidade() {
		this.home = new HomePage(getwebDriver());
	}

	public void clicarMenuHome() {
		this.home.getMenuHome().click();
	}

	public void clicarMenuCriarMovimentacao() {
		this.home.getMenuCriarMovimentacao().click();
	}

	public void acessarPaginaContas() {
		this.home.getMenuContas().click();
		this.home.getSubMenuAdicionar().click();
	}

	public void acessarPaginaListar() {
		this.home.getMenuContas().click();
		this.home.getSubMenuListar().click();
	}

	public void clicarMenuResumoMensal() {
		this.home.getMenuRsumoMensal().click();
	}

	public String retornaMenagem() {
		wait.until(ExpectedConditions.visibilityOf(this.home.getMsgSucesso()));
		return this.home.getMsgSucesso().getText();
	}

	public String retornaValor() {
		WebElement valor = getwebDriver().findElement(By.xpath("//table[@id='tabelaSaldo']//tbody//td[contains(text(),'"
				+ VariaveisEstaticas.getNOME_CONTA() + "')]/../td[2]"));
		return valor.getText();
	}

}
