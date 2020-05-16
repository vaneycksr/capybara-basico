# frozen_string_literal: true

# definindo o que vou usar
require 'capybara/cucumber'
require 'selenium-webdriver'

# configurando o capybara
Capybara.configure do |config|
  # setando o driver default pra ser o selenium do chrome
  config.default_driver = :selenium_chrome

  # configurando uma url padrao
  config.app_host = 'https://automacaocombatista.herokuapp.com'

  # tempo default para esperar os elementos visiveis na tela
  config.default_max_wait_time = 5
end
