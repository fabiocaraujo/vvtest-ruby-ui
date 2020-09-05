class PesquisaPage < SitePrism::Page 
    set_url '?page_id=2'
    
    element :menu_pesquisa, '.menu-item-226 a'
    element :cmp_nome, '#nf-field-5'
    element :cmp_sobrenome, '#nf-field-6'
    element :cmp_email, '#nf-field-7'
    element :cmp_confirmar_email, '#nf-field-8'
    element :cmp_telefone, '#nf-field-17'
    element :chk_idade,  '#nf-field-10-wrap .nf-field-element'
    element :cmb_tempo_area, '#nf-field-11'
    element :cmb_atraiu_area, '#nf-field-12'
    element :cmb_melhoria, '#nf-field-13-wrap ul'
    element :cmp_linguagem, '#nf-field-14'
    element :cmp_msg, '#nf-field-15'
    element :btn_enviar, '#nf-field-16'

    def preencher_form_pesquisa 
        cmp_nome.set 'Fábio'
        cmp_sobrenome.set 'Araújo'
        cmp_email.set 'fabio@teste.com.br'
        cmp_confirmar_email.set 'fabio@teste.com.br'
        cmp_telefone.set '1199889988'
        choose('18-30', allow_label_click: true)
        cmb_tempo_area.select('Menos de 5 anos')
        cmb_atraiu_area.select('Salário')
        choose('Comunicação', allow_label_click: true)
        cmp_linguagem.set 'JAVA'
        cmp_msg.set 'Texto de msg'
    end

    def preencher_form_pesquisa_parametro nome, sobrenome, email, conf_email, tel, idade, tempo, atrair, melhorar, linguagem, msg
        cmp_nome.set nome
        cmp_sobrenome.set sobrenome
        cmp_email.set email
        cmp_confirmar_email.set conf_email
        cmp_telefone.set tel
        choose(idade, allow_label_click: true)
        cmb_tempo_area.select(tempo)
        cmb_atraiu_area.select(atrair)
        choose(melhorar, allow_label_click: true)
        cmp_linguagem.set linguagem
        cmp_msg.set msg
    end
  
    def enviar_pesquisa
        btn_enviar.click
        sleep 1
    end

    def acessar_menu_pesquisa
        menu_pesquisa.click
    end

  end