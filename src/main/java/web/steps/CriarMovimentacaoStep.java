package web.steps;

import org.junit.Assert;

import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import web.funcionalidade.CriarMovimentacaoFuncionalidade;

public class CriarMovimentacaoStep {

	private CriarMovimentacaoFuncionalidade movi;

	public CriarMovimentacaoStep() {
		this.movi = new CriarMovimentacaoFuncionalidade();
	}

	@Quando("crio uma movimentacao com dados validos")
	public void crioUmaMovimentacaoComDadosValidos() {
		this.movi.criarMovimentacaoComSucesso();
	}

	@Quando("crio uma movimentacao sem o campo Data da Movimentacao")
	public void crioMovimentacaoSemCampoDataDaMovimentacao() {
		this.movi.criarMovimentacaoSemCampoDataMovimentacao();
	}
	
	@Quando("crio uma movimentacao sem o campo Data do Pagamento")
	public void crioMovimentacaoSemCampoDataDoPagamento() {
	    this.movi.criarMovimentacaoSemCampoDataPagamento();
	}
	
	@Quando("crio uma movimentacao sem o campo Descrição")
	public void crioMovimentacaoSemCampoDescrição() {
	    this.movi.criarMovimentacaoSemCampoDescricao();
	}

	@Entao("sistema exibi a mensagem {string} na tela Movimentacao")
	public void sistemaExibiAMensagemNaTelaMovimentacao(String msg) {
		Assert.assertTrue(this.movi.retornaMenagens().add(msg));
	}

}
