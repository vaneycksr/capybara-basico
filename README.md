# capybara-basico

Repositório com o intuito de aprender mais sobre capybara e ruby


### Pré-requisito

- *Configurar o driver do selenium corretamente no sistema operacional*
- *Ter o ruby instalado*

### Instalando e configurando a gem do capybara

```shell
	$ gem install capybara
```

> no arquive Gemfile colocar a gem do capybara e do selenium
	
  
	gem 'capybara'
	gem 'selenium-webdriver'


> baixar essas dependencias no projeto


```shell
	$ bundle install
```

> no arquivo support/env.rb adicioanar 

	require 'capybara/cucumber'
	require 'selenium-webdriver'
  
