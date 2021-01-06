package web.steps;

import org.junit.Assert;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import web.funcionalidade.HomeFuncionalidade;

public class HomeStep {

	private HomeFuncionalidade home;

	public HomeStep() {
		this.home = new HomeFuncionalidade();
	}

	@Dado("acesso a pagina Adiconar")
	public void acessoPaginaAdiconar() {
		this.home.acessarPaginaContas();
	}
	
	@Dado("acesso a pagina Criar Movimentacao")
	public void acessoPaginaCriarMovimentacao() {
	    this.home.clicarMenuCriarMovimentacao();
	}

	@Entao("sistema exibi a mensagen {string} na Home")
	public void sistemaExibiAMensagenNaHome(String msg) {
		Assert.assertEquals(this.home.retornaMenagem(), msg);

	}

}
