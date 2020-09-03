# Lista de métodos auxiliares 
class Auxiliar < SitePrism::Page

    def screen_shot_failed
        num = rand(10)
        page.save_screenshot "C:/Teste Inmetrics/Ruby/teste-inmetrics/evidencia-print/falhas/Evidencia-Falha--#{num}.png"
    end

    def screen_shot_sucess
        num = rand(10)
        page.save_screenshot "C:/Teste Inmetrics/Ruby/teste-inmetrics/evidencia-print/sucesso/Evidencia-Sucesso--#{num}.png"
    end

end 