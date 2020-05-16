# frozen_string_literal: true

When('clico em botoes') do
  # acessa a pagina que esta configurada padrao
  visit '/'

  # clicar no link que tenha determinado texto
  click_link('Github')

  visit '/buscaelementos/botoes'

  # clicar no botao que contenha essa classe
  click_button(class: 'btn waves-light')

  # busca o elemento e depois clica
  find('a[onclick="ativaedesativa2()"]').click

  # dando double click
  find('a[onclick="ativaedesativa2()"]').double_click

  # clicando com o botao direito
  find('a[onclick="ativaedesativa3()"]').right_click

  visit '/'
end
