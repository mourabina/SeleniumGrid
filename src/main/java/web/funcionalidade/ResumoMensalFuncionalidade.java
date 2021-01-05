package web.funcionalidade;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import commons.BaseTest;
import commons.funcionalidade.VariaveisEstaticas;
import web.pages.ResumoMensalPage;

public class ResumoMensalFuncionalidade extends BaseTest {
	
	private ResumoMensalPage resumo;
	
	public ResumoMensalFuncionalidade() {
		this.resumo = new ResumoMensalPage(getwebDriver());
	}
	
	public void selecionarMes(String mes) {
		Select mesSelecionado = new Select(this.resumo.getSelectMes());
		mesSelecionado.selectByVisibleText(mes);
		addEvidenciaWeb("Selecionado Mês");
	}
	
	public void selecionarAno(String ano) {
		Select anoSelecionado = new Select(this.resumo.getSelectMes());
		anoSelecionado.selectByVisibleText(ano);
		addEvidenciaWeb("Selecionado Ano");
	}
	
	public void clicarBotaoBuscar() {
		this.resumo.getBtnBuscar().click();
		addEvidenciaWeb("Busca Efetuada com Sucesso");
	}
	
	public void clicarDeletarMovimentacao() {
		WebElement movimentacao = getwebDriver().findElement(By.xpath("//table[@id='tabelaExtrato']//tbody//td[text()='"+VariaveisEstaticas.getNOME_CONTA()+"']/../td[6]//span"));
		movimentacao.click();
		addEvidenciaWeb("Deletando Movimentação");
	}
	
	 public List<String> retornaMenagens(){
			List<WebElement> lista = this.resumo.getListaMensagens();
			List<String> listaString = new ArrayList<String>();
			for(int i=0; i<lista.size(); i++) {
				listaString.add(lista.get(i).getText());
			}
			addEvidenciaWeb("Validando Mensagem Exibida");
			return listaString;
		}

}
