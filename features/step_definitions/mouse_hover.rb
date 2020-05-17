# frozen_string_literal: true

When('seleciono o mouse hover') do
  visit '/iteracoes/mousehover'

  find('.activator').hover
end

Then('verifico a mensagem que é exibida após o mouse hover') do
  page.assert_text(text, 'Parábens')
  page.assert_text(text, 'Você usou o mouse hover!')
end
