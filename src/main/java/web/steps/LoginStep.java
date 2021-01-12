package web.steps;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import web.funcionalidade.LoginFuncionalidade;

public class LoginStep {

	private LoginFuncionalidade login;

	public LoginStep() {
		this.login = new LoginFuncionalidade();

	}

	@Dado("que estou no site do Senhor Barriga")
	public void queEstouNoSiteDoSenhorBarriga() throws Exception {
		this.login.acessarSite();
	}

	@Dado("preencho somente o campo senha com o valor {string}")
	public void preenchoSomenteOCampoSenhaComOValor(String senha) {
		this.login.digitarCampoSenha(senha);
	}

	@Dado("clico no botao Entrar")
	public void clicoNoBotaoEntrar() {
		this.login.clicarBotaoEntra();
	}

	@Dado("preencho somente o campo Email com o valor {string}")
	public void preenchoSomenteOCampoEmailComOValor(String email) {
		this.login.digitarCampoEmail(email);

	}

	@Dado("que estou logado no Site do Senhor Barriga {string} e {string}")
	public void efetuarAutenticacao(String email, String senha) throws Exception {
		this.queEstouNoSiteDoSenhorBarriga();
		this.digitoEmailESenha(email, senha);
		this.login.clicarBotaoEntra();
	}

	@Entao("deve ser apresentado a mensagem {string} na tela de login")
	public void deveSerApresentadoAMensagemNaTelaDeLogin(String msg) {
		Assert.assertTrue(this.login.retornaMenagens().contains(msg));
	}

	@Dado("digito email {string} e senha {string}")
	public void digitoEmailESenha(String email, String senha) {
		this.login.digitarCampoEmail(email);
		this.login.digitarCampoSenha(senha);

	}

	@Dado("acesso a pagina Criar Novo Usuario")
	public void acessarPaginaNovoUsuario() {
		this.login.acessarPaginaNovoUsuario();
	}

	@Entao("sistema exibi as mensagens {string} e {string} na tela de login")
	public void sistemaExibiAsMensagensENaTelaDeLogin(String msg1, String msg2) {
		List<String> lista = new ArrayList<String>();
		lista.add(msg1);
		lista.add(msg2);
		Assert.assertEquals(this.login.retornaMenagens(), lista);

	}

}
