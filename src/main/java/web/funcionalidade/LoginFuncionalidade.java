package web.funcionalidade;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebElement;

import commons.BaseTest;
import web.pages.LoginPage;

public class LoginFuncionalidade extends BaseTest {
	
	private LoginPage login;
	
	public LoginFuncionalidade() {
		this.login = new LoginPage(getwebDriver());
	}
	
	
	public void acessarSite() throws Exception {
		getwebDriver().get("http://srbarriga.herokuapp.com/");
		
	}
	
	public void digitarCampoEmail(String email) {
		this.login.getInputEmail().sendKeys(email);
	}
	
	public void digitarCampoSenha(String senha) {
		this.login.getInputSenha().sendKeys(senha);
	}
	
	public void clicarBotaoEntra() {
		this.login.getBtnEntrar().click();
	}
	
	public void acessarPaginaNovoUsuario() {
		this.login.getMenuNovoUsuario().click();
	}
	
	public List<String> retornaMenagens(){
		List<WebElement> lista = this.login.getListaMensagens();
		List<String> listaString = new ArrayList<String>();
		for(int i=0; i<lista.size(); i++) {
			listaString.add(lista.get(i).getText());
		}
		return listaString;
	}
	

}
