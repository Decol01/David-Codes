Dado ("Que eu faça o Cadastro do usuário") do
    @cadastro = PageCadastro.new
    @cadastro.load
    sleep 5  
    #@cadastro.fazer_cadastro
end

Quando ("efetuo o Login") do 
    @login = PageLogin.new 
    @login.efetuar_login
end
   
Então ("funcionário-cadastrar-editar-exclur") do
    @cadastro_interno = CadastroInterno.new 
    @cadastro_interno.cadastrar_editar_excluir
end