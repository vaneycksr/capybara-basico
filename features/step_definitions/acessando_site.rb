# frozen_string_literal: true

When('acesso a url') do
  # acessando url
  visit '/treinamento/home'

  sleep 2
end

Then('verifico se estou na pagina correta') do
  # verifica se esta em uma pagina
  expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end
