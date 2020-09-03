class PageLogin < SitePrism::Page

    #========================================================#                                                                          
    #                 Elementos da pagina                    #
    #========================================================#

    element :campoLogin, 'input[name="username"]'
    element :campoSenha, 'input[name="pass"]'
    element :botoaoEntre, 'button[class="login100-form-btn"]' 

    #========================================================#                                                                          
    #                 Metodos da pagina                      #
    #========================================================#

    def efetuar_login
        campoLogin.set($user_cadastro)
        campoSenha.set($password)
        botao = find(:xpath, '//button[@class="login100-form-btn"]').text()
            if botao.include?('Entre') 
                @aux = Auxiliar.new
                @aux.screen_shot_sucess
                botoaoEntre.click
                puts '--------> <<<< Login feito com sucesso >>>>'
            else
                puts '--------> <<<< Login Falhado >>>>'       
                @aux.screen_shot_failed
        end 
    end 
   
end