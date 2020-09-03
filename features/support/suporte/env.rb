require 'selenium-webdriver'
require 'rspec'
#require 'httparty'
require 'site_prism'
require 'capybara/cucumber'
require 'yaml'
require 'report_builder'

# Dados do config 
$config = YAML.load_file('./features/support/data/config.yml')

# Dados de Cadastro de user
$user_cadastro = $config[0]["userCadastroLogin"]
$password = $config[0]["passWordLogin"]

# Dados do Cadastro de funcionario
$nome = $config[1]["nomeCadastro"]
$cpf = $config[1]["cpfCadastro"]
$dataAdmissão = $config[1]["dataAdmissãoCadastro"]
$carga = $config[1]["cargaCadastro"]
$salario = $config[1]["salarioCadastro"]
$novo_salario = $config[1]["new_salario"]

# Configuração chrome 
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://www.inmrobo.tk/accounts/login/'
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 15 
end

