package web.funcionalidade;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

import commons.BaseTest;
import commons.funcionalidade.GeracaoData;
import commons.funcionalidade.VariaveisEstaticas;
import web.pages.CriarMovimentacaoPage;

public class CriarMovimentacaoFuncionalidade extends BaseTest {
	
	private CriarMovimentacaoPage movi;

		
	public CriarMovimentacaoFuncionalidade() {
		this.movi = new CriarMovimentacaoPage(getwebDriver());
	}
	
	public void selcionarTipoReceita(String receita) {
		wait.until(ExpectedConditions.visibilityOf(this.movi.getSelectTipoReceita()));
		Select recei = new Select(this.movi.getSelectTipoReceita());
		recei.selectByVisibleText(receita);
		
	}
	
	public void selecionarConta() {
		Select conta = new Select(this.movi.getSelectConta());
		conta.selectByVisibleText(VariaveisEstaticas.getNOME_CONTA());
	}
	
	public void criarMovimentacaoComSucesso() {
		this.selcionarTipoReceita("Receita");
		this.movi.getInputDataMovimentacao().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputDataPagamento().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputDescricao().sendKeys("Teste de Automação Selenium Grid");
		this.movi.getInputInteressado().sendKeys("Automação");
		this.movi.getInputValor().sendKeys("250,00");
		this.selecionarConta();
		this.movi.getRadioButtonPago().click();
		addEvidenciaWeb("Formulario preenchido com sucesso");
		this.movi.getBtnSalvar().click();
	}
	
	public void criarMovimentacaoSemCampoDataMovimentacao() {
		this.selcionarTipoReceita("Receita");
		this.movi.getInputDataPagamento().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputDescricao().sendKeys("Teste de Automação Selenium Grid");
		this.movi.getInputInteressado().sendKeys("Automação");
		this.movi.getInputValor().sendKeys("250,00");
		this.selecionarConta();
		this.movi.getRadioButtonPago().click();
		addEvidenciaWeb("Formulario preenchido com sucesso");
		this.movi.getBtnSalvar().click();
	}
	
	public void criarMovimentacaoSemCampoDataPagamento() {
		this.selcionarTipoReceita("Receita");
		this.movi.getInputDataMovimentacao().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputDescricao().sendKeys("Teste de Automação Selenium Grid");
		this.movi.getInputInteressado().sendKeys("Automação");
		this.movi.getInputValor().sendKeys("250,00");
		this.selecionarConta();
		this.movi.getRadioButtonPago().click();
		addEvidenciaWeb("Formulario preenchido com sucesso");
		this.movi.getBtnSalvar().click();
	}
	
	public void criarMovimentacaoSemCampoDescricao() {
		this.selcionarTipoReceita("Receita");
		this.movi.getInputDataMovimentacao().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputDataPagamento().sendKeys(GeracaoData.retornaDataAtual());
		this.movi.getInputInteressado().sendKeys("Automação");
		this.movi.getInputValor().sendKeys("250,00");
		this.selecionarConta();
		this.movi.getRadioButtonPago().click();
		addEvidenciaWeb("Formulario preenchido com sucesso");
		this.movi.getBtnSalvar().click();
	}
	
	public List<String> retornaMenagens(){
		List<WebElement> lista = this.movi.getListaMensagens();
		List<String> listaString = new ArrayList<String>();
		for(int i=0; i<lista.size(); i++) {
			listaString.add(lista.get(i).getText());
		}
		addEvidenciaWeb("Validando Mensagem Exibida");
		return listaString;
	}

}






