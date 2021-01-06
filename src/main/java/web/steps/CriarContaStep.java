package web.steps;

import org.junit.Assert;

import commons.funcionalidade.VariaveisEstaticas;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import web.funcionalidade.CriarContaFuncionalidade;
import web.funcionalidade.HomeFuncionalidade;

public class CriarContaStep {
	
	private CriarContaFuncionalidade conta;
	private HomeFuncionalidade home;
	
	
	public CriarContaStep() {
		this.conta = new CriarContaFuncionalidade();
		this.home = new HomeFuncionalidade();
		
	}
	
	@Quando("clico no botao Salvar")
	public void clicoBotaoSalvar() {
	    this.conta.clicarBotaoCadastrar();
	}
	
	@Dado("preencho o campo Nome com informacao correta")
	public void preenchoCampoNomeComInformacaoCorreta() {
	  this.conta.digitarNomeConta();
	}
	@Dado("tenho uma conta ja criada")
	public void tenhoUmaContaJaCriada() {
	   this.home.acessarPaginaContas();
	   this.preenchoCampoNomeComInformacaoCorreta();
	   this.clicoBotaoSalvar();
	}

	@Quando("digito o no campo Nome um valor ja utilizado")
	public void digitoCampoNomeValorJaUtilizado() {
	    this.conta.digitarNomeConta(VariaveisEstaticas.getNOME_CONTA());
	}

	@Entao("sistema exibi a mensagem {string} na tela Adicionar")
	public void validarMensagenExibidaTelaAdicionar(String msg) {
	    Assert.assertTrue(this.conta.retornaMenagens().contains(msg));
	}

}
