package web.funcionalidade;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebElement;

import commons.BaseTest;
import web.pages.CriarNovoUsuarioPage;

public class CriarNovoUsuarioFuncionalidade extends BaseTest {
	
	private CriarNovoUsuarioPage novoUsuario;
	
    public CriarNovoUsuarioFuncionalidade() {
    	this.novoUsuario = new CriarNovoUsuarioPage(getwebDriver());
    }
    
    public void digitarNome(String nome) {
    	this.novoUsuario.getInputNome().sendKeys(nome);
    }
    
    public void digitarEmail(String email) {
    	this.novoUsuario.getInputEmail().sendKeys(email);
    }
    
    public void digitarSenha(String senha) {
    	this.novoUsuario.getInputSenha().sendKeys(senha);
    }
    
    public void clicarBotaoCadastrar() {
    	this.novoUsuario.getBtnCadastrar().click();
    }
    
    public List<String> retornaMenagens(){
		List<WebElement> lista = this.novoUsuario.getListaMensagens();
		List<String> listaString = new ArrayList<String>();
		for(int i=0; i<lista.size(); i++) {
			listaString.add(lista.get(i).getText());
		}
		return listaString;
	}

}
