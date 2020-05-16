# frozen_string_literal: true

When('acesso a url de botoes') do
  visit '/buscaelementos/botoes'
end

Then('verifico se encontrei os elementos') do
  # all busca todos os elementos que passar como parametro
  page.all('.btn')

  # busca um elemento em especifico
  find('#teste')

  # busca pelo id
  find_by_id('teste')

  # buscar por botao pela classe
  find_button(class: 'btn waves-light')

  # busca o primeiro elemento
  first('.btn')

  # busca por algum link
  find_link(href: 'https://medium.com/automa%C3%A7%C3%A3o-com-batista')
end
