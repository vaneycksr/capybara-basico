# frozen_string_literal: true

When('clico no botao') do
  visit '/buscaelementos/botoes'

  find('#teste').click
end

Then('verifico se o texto apareceu na tela com sucesso And') do
  #   texto = find('#div1').text
  #   expect(texto).to eql 'Você Clicou no Botão!'

  page.assert_text(text, 'Você Clicou no Botão!')
  page.has_text?('Você Clicou no Botão!')
  have_text('Você Clicou no Botão!')
end

Then('verifico se o texto desapareceu na tela com sucesso') do
  find('#teste').click

  # verfica se o texto nao esta na tela
  assert_no_text(text, 'Você Clicou no Botão!')
  has_no_text?('Você Clicou no Botão!')

  sleep 2
end
