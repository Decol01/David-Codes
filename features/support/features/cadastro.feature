# language: pt
# encoding: utf-8

Funcionalidade: Acessar o site e fazer um novo cadastro
    Cadastrar usuário
    Login
    Funcionário 


    @cadastro_inmetrics
    Cenário: Cadastro de novo colaborador no site Inmetrics
        Dado Que eu faça o Cadastro do usuário
        Quando efetuo o Login
        Então funcionário-cadastrar-editar-exclur