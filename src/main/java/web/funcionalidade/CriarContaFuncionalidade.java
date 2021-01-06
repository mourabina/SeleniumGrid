package web.funcionalidade;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebElement;

import com.github.javafaker.Faker;

import commons.BaseTest;
import commons.funcionalidade.VariaveisEstaticas;
import web.pages.CriarContaPage;
import web.pages.HomePage;

public class CriarContaFuncionalidade extends BaseTest {
	
	private CriarContaPage conta;
	private HomePage home;
	
	public CriarContaFuncionalidade() {
		this.conta = new CriarContaPage(getwebDriver());
		this.home = new HomePage(getwebDriver());
	}
	
	public void digitarNomeConta() {
		Faker faker = new Faker();
		String nome = faker.name().firstName();
		this.conta.getInputNome().sendKeys(nome);
		VariaveisEstaticas.setNOME_CONTA(nome);
	}
	
	public void digitarNomeConta(String conta) {
		this.home.getMenuContas().click();
		this.home.getSubMenuAdicionar().click();
		this.conta.getInputNome().sendKeys(conta);
		this.conta.getBtnSalvar().click();
	}
	
	public void clicarBotaoCadastrar() {
		this.conta.getBtnSalvar().click();
	}
	
	public List<String> retornaMenagens(){
		List<WebElement> lista = this.conta.getListaMensagens();
		List<String> listaString = new ArrayList<String>();
		for(int i=0; i<lista.size(); i++) {
			listaString.add(lista.get(i).getText());
		}
		return listaString;
	}

}
