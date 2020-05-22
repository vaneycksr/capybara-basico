# frozen_string_literal: true

When('eu uso script') do
  visit '/outros/scroll'

  # realizar script em jquery atraves do capybara
  page.execute_script('window.scrollBy(0,1500)')

  # executar algumas acoes que recebem algum resultado
  @result = page.evaluate_script('8+8')

  puts @result

  sleep 4
end
