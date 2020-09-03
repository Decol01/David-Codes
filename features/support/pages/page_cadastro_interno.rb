class CadastroInterno < SitePrism::Page


    #========================================================#                                                                          
    #                 Elementos da pagina                    #
    #========================================================#
    element :botaoNovoFunc, 'a[href="/empregados/new_empregado"]'
    element :campoNome, 'input[id="inputNome"]'
    element :campoCPF, 'input[id="cpf"]' 
    element :campoSexo, 'select[id="slctSexo"]'
    element :campoAdmissão, 'input[id="inputAdmissao"]'
    element :campoCarga, 'input[id="inputCargo"]'
    element :campoSalario, 'input[id="dinheiro"]'
    element :campoEnviar, 'input[class="cadastrar-form-btn"]'
    element :campoPesquisar, 'input[type="search"]'
    element :tipo_contratacao_CLT, 'input[id="clt"]'
    element :tipo_contratacao_PJ, 'input[id="pj"]'
    
    #========================================================#                                                                          
    #                 Metodos da pagina                      #
    #========================================================#

    def clicar_novo_funcionario 
        sleep 5
        botaoNovoFunc.click
    end 
    
    def cadastrar_novo_funcionario
        campoNome.set($nome)
        campoSexo.click
        campoSexo.send_keys("Masculino")
        campoAdmissão.set($dataAdmissão)
        campoCarga.set($carga)
        campoSalario.set($salario)
        tipo_contratacao_CLT.click 
        campoCPF.set($cpf)
        campoEnviar.click
        sleep 3
        pop_sucesso = find(:xpath, '//div[@class="alert alert-success alert-dismissible fade show"]').text()
        if pop_sucesso.include?('SUCESSO!')
            @aux = Auxiliar.new 
            puts "-------> usuario cadastrado com sucesso"
            @aux.screen_shot_sucess
        else 
            puts "-----> Erro ai finalizar processo"
            @aux.screen_shot_failed
        end 
    end 

    def pesquisar_nome
        sleep 7 # Esperando toda pagina carregar, caso ouver lentidão. 
        campoPesquisar.set($nome)
    end

    def botao_editar
        begin 
            editar = page.find(:xpath, '/html/body/div[1]/div[2]/div/table/tbody/tr[1]/td[6]/a[2]/button').click 
            sleep 2 
            campoSalario.set($novo_salario)
            campoEnviar.click
            sleep 6
            puts "Edição feita com sucesso !!"
        rescue 
            puts "Algo deu ERRADO !!"
        end 
    end

    def botao_excluir 
        excluir = page.find(:xpath, '//tbody[1]/tr[1]//button[@id="delete-btn"]').click 
        sleep 3
        pop_sucesso = find(:xpath, '//div[@class="alert alert-success alert-dismissible fade show"]').text()
        if pop_sucesso.include?('SUCESSO!')
            @aux = Auxiliar.new
            print "-------> Usuario excluido com sucesso !!"
            @aux.screen_shot_sucess
        else 
            puts "-----> Erro ao excluir usuario !!" 
            @aux.screen_shot_failed
        end 
        sleep 5
        
    end

    ############### FLUXO PRINCIPAL ############

    def cadastrar_editar_excluir
        clicar_novo_funcionario
        cadastrar_novo_funcionario
        pesquisar_nome
        botao_editar
        pesquisar_nome
        botao_excluir
    end 
end