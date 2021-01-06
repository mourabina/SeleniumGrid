package web.steps;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;

import com.github.javafaker.Faker;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import web.funcionalidade.CriarNovoUsuarioFuncionalidade;

public class NovoUsuarioStep {

	private CriarNovoUsuarioFuncionalidade novo;
	private Faker faker;

	public NovoUsuarioStep() {
		this.novo = new CriarNovoUsuarioFuncionalidade();
		this.faker = new Faker();
	}

	@Dado("preencho apenas o campo Nome")
	public void preenchoApenasCampoNome() {
		this.novo.digitarNome(faker.name().firstName());

	}

	@Dado("preencho apenas o campo Email")
	public void preenchoApenasCampoEmail() {
		this.novo.digitarEmail(faker.internet().emailAddress());
	}

	@Dado("preencho apenas o campo Senha")
	public void preenchoApenasCampoSenha() {
		this.novo.digitarSenha("123");

	}

	@Dado("preencho todos os campos corretamente")
	public void preenchoTodosCamposCorretamente() {
		this.preenchoApenasCampoNome();
		this.preenchoApenasCampoEmail();
		this.preenchoApenasCampoSenha();

	}
	
	@Quando("clico no botao Cadastrar")
	public void clicoNoBotaoCadastrar() {
	    this.novo.clicarBotaoCadastrar();
	}

	@Entao("sistema exibi a mensagem {string} na tela Novo Usuario")
	public void validarMensagenSucessoTelaNovoUsuario(String msg) {
		Assert.assertTrue(this.novo.retornaMenagens().contains(msg));
	}

	@Entao("sistema exibi as mensagem {string} e {string} na tela Novo Usuario")
	public void validarMensagensExibidasTelaNovoUsuario(String msg1, String msg2) {
		List<String> lista = new ArrayList<String>();
		lista.add(msg1);
		lista.add(msg2);
		Assert.assertEquals(this.novo.retornaMenagens(), lista);
	}

}
