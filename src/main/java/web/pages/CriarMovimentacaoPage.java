package web.pages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CriarMovimentacaoPage {

	@FindBy(id = "tipo")
	private WebElement selectTipoReceita;

	@FindBy(id = "data_transacao")
	private WebElement inputDataMovimentacao;

	@FindBy(id = "data_pagamento")
	private WebElement inputDataPagamento;

	@FindBy(id = "descricao")
	private WebElement inputDescricao;

	@FindBy(id = "interessado")
	private WebElement inputInteressado;

	@FindBy(id = "valor")
	private WebElement inputValor;

	@FindBy(id = "conta")
	private WebElement selectConta;

	@FindBy(id = "status_pago")
	private WebElement radioButtonPago;

	@FindBy(id = "status_pendente")
	private WebElement radioButtonPendente;

	@FindBy(xpath = "//button[text()='Salvar']")
	private WebElement btnSalvar;

	@FindBy(xpath = "//div[contains(@class,'alert alert')]")
	private List<WebElement> listaMensagens;

	public CriarMovimentacaoPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	public WebElement getSelectTipoReceita() {
		return selectTipoReceita;
	}

	public WebElement getInputDataMovimentacao() {
		return inputDataMovimentacao;
	}

	public WebElement getInputDataPagamento() {
		return inputDataPagamento;
	}

	public WebElement getInputDescricao() {
		return inputDescricao;
	}

	public WebElement getInputInteressado() {
		return inputInteressado;
	}

	public WebElement getInputValor() {
		return inputValor;
	}

	public WebElement getSelectConta() {
		return selectConta;
	}

	public WebElement getRadioButtonPago() {
		return radioButtonPago;
	}

	public WebElement getRadioButtonPendente() {
		return radioButtonPendente;
	}

	public WebElement getBtnSalvar() {
		return btnSalvar;
	}

	public List<WebElement> getListaMensagens() {
		return listaMensagens;
	}

}
