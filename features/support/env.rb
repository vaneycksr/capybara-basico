# frozen_string_literal: true

# definindo o que vou usar

# necessario comentar se quiser que a sessao nao encerre
# e tiver um cenario que dependa do outro
# require 'capybara/cucumber' # encerra a sessao apos cada cenario

require 'capybara' # necessario para nao encerrar sessao apos cenario
require 'capybara/dsl' # necessario para nao encerrar sessao apos cenario
require 'capybara/rspec/matchers' # necessario para nao encerrar sessao apos cenario
require 'selenium-webdriver'

World(Capybara::DSL) # necessario para nao encerrar sessao apos cenario
World(Capybara::RSpecMatchers) # necessario para nao encerrar sessao apos cenario

# configurando o capybara
Capybara.configure do |config|
  # setando o driver default pra ser o selenium do chrome
  config.default_driver = :selenium_chrome

  # configurando uma url padrao
  config.app_host = 'https://automacaocombatista.herokuapp.com'

  # tempo default para esperar os elementos visiveis na tela
  config.default_max_wait_time = 5
end
