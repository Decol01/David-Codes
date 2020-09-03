Dir[File.join(File.dirname(__FILE__), "../pages../_page.rb")].each { |file| require file }

    module PageObjects 
        def cadastro
            @cadastro ||= PageCadastro.new 
        end 

        def login 
            @login ||= PageLogin.new 
        end
    end 
        