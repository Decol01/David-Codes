class PageCadastro < SitePrism::Page 

    #========================================================#                                                                          
    #                 Elementos da pagina                    #
    #========================================================#

    element :botaoCadastrase, 'a[class= "txt2 bo1"]'
    element :campoUsuario, 'input[name="username"]'
    element :campoSenha, 'input[name="pass"]'
    element :campoConfirmarSenha, 'input[name="confirmpass"]'
    element :botaoConecte_se, 'button[class="login100-form-btn"]'


    #========================================================#                                                                          
    #                 Metodos da pagina                      #
    #========================================================#

    set_url "http://www.inmrobo.tk/accounts/login/"

    def fazer_cadastro
        @aux = Auxiliar.new 
        begin
            botaoCadastrase.click 
            campoUsuario.set($user_cadastro)
            campoSenha.set($password)
            campoConfirmarSenha.set($password)
            botaoConecte_se.click 
            sleep 20
            puts "-------> Cadastro realizado com sucesso"
        rescue
            puts "-------> Cadastro interno Falhado"
            @aux.screen_shot_failed
        end
    end
end