Dado('que eu acesse a página da VV Test') do 
    @pesq_page = PesquisaPage.new
    @pesq_page.load
  end
  
  Dado('acesse o menu Pesquisa - QA') do
    @pesq_page.acessar_menu_pesquisa
  end
  
  Quando('eu preencher todos os campos obrigatórios') do
    @pesq_page.preencher_form_pesquisa
    @pesq_page.enviar_pesquisa
    sleep(2)
  end

  Quando('eu preencher todos os campos  {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |nome, sobrenome, email, conf_email, tel, idade, tempo, atrair, melhorar, linguagem, msg|
      @pesq_page.preencher_form_pesquisa_parametro nome, sobrenome, email, conf_email, tel, idade, tempo, atrair, melhorar, linguagem, msg
      @pesq_page.enviar_pesquisa
  end
  
  Então('deve ser direcionado para uma página de sucesso') do
    expect(page).to have_content('Pesquisa para o profissional da área de Qualidade:')
    expect(page).to have_content('Your form has been successfully submitted.')    
  end

  Então('deve exibir uma mensagem de erros {string}') do |msg_erro|
    assert_text(msg_erro)
    assert_text('Corrija os erros antes de enviar este formulário.')
  end