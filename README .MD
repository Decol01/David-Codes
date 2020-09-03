## Teste Inmetrics - Descrever como executar o projeto 

Autor: David De Col Rodrigues - AUTOMATION TECHNICIAN 
## Requisitos para rodar o teste

0 - Necessario Colocar o projeto dentro Do disco C, para que os caminhos de print, funcionem corretamente. 
Caso opte por não colocar, mude o caminho de evidencia dentro de Auxiliar.rb 

1 - As pastas de Print já estão dentro do proprio projeto
em "C:\Teste Inmetrics\Ruby\teste-inmetrics" além de prints feitos pelo teste, foi adcionado 
repot-web,onde tambem gera logs do cucumber.
OBS: O relatorio do Cucumber está com algum erro, mesmo todos cenarios passando 100% ele ainda irá indentifica los como falha.  
Os mesmos encontasse dentro de  "C:\Teste Inmetrics\Ruby\teste-inmetrics"

2- Todas informações de Login/Cadastro. Encontrasse em C:\Teste Inmetrics\Ruby\teste-inmetrics\features\support\data\config.yml
Caso ouver a necessidade de mudar informações de login, apenas basta mudar a informação da variavel. 

3- ChromeDriver encontrasse na pasta Bin do Ruby.

4- O comando para executar o teste é "cucumber -t @cadastro_inmetrics" ou apenas "cucumber" 

5 - O teste está configurado com informações novas de Login/Cadastro/ | Não á necessidade de mudar os dados em Config. 

## ESTRUTURA DO PROJETO ## 

Config: encontrasse dados das variaveis de Login/ Cadastro .
Feature: Feature dos Cénarios do projeto. 
Pages: Onde se encontra se todos métodos de cada pagina e seu fluxo principal.
Steps: Onde fica o step do projeto, apenas as chamadas de cada pagina, de uma maneira limpa. 
Auxiliar: Encontra se os Métodos de print ultilizados em alguns processos 
Env: Configurações de métodos globais e configurações de Brownser 
Hooks: Configuraão do "report_builder". 

Obs: Faltou desafios para terminar. 
Web Service 
Criar um Jenkins para rodar os testes 2x por dia.
Gerar relatório de execução (cucumber-report) (Com problema de versão) 

ERROR: WARNING: 
#embed(file, mime_type, label) is deprecated and will be removed after version 6.0.0. Please use attach(file, media_type) instead.
(Called from C:/Teste Inmetrics/Ruby/teste-inmetrics/features/support/hooks.rb:14:in `add_screenshot')

##