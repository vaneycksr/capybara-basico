# frozen_string_literal: true

When('eu entro na janela e verifico a mensagem') do
  visit '/mudancadefoco/janela'

  # mapeia nova aba do browser que vai ser aberta
  # apos clicar no link
  new_window = window_opened_by do
    click_link 'Clique aqui'
  end

  # muda o foco para a nova aba que
  within_window new_window do
    # verifica se estou mesmo na outra aba
    # comparando a url atual com o esperado
    expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

    page.assert_text(text, 'Você Abriu uma nova janela!!')

    # fecha a segunda aba
    new_window.close
  end
end

When('eu entro no alert e faco a acao') do
  visit '/mudancadefoco/alert'

  # find('button[onclick="jsAlert()"]').click
  # \o/ assim funciona - pega pelo apenas pelo texto do botao
  click_button 'Clique para JS Alert'

  # procura na pagina um alert para poder aceitar
  page.accept_alert

  find('button[onclick="jsConfirm()"]').click

  # procura na pagina um alert que possa ser cancelado
  page.dismiss_confirm

  find('button[onclick="jsPrompt()"]').click

  # procura na pagina um prompt pra ser digitado
  page.accept_prompt(with: 'vaneycksr')

  sleep 2
end
