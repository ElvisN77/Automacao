describe "forms", :tag do
    it 'login com sucesso' do
        #Tela 1
        visit 'https://www.dimepkairos.com.br/'

        fill_in "LogOnModel.UserName",	with: "elvis.neves@pitang.com" 
        fill_in "LogOnModel.Password",	with: "elsan4267" 
        click_button 'Entrar'


        #Tela 2
        expect(find('#SelecEmpresas_chznEmp').visible?).to be true
        #expect(find("#SelecEmpresas_chznEmp").text).to include 'PITANG CONSULTORIA E SISTEMAS SA'  (funciona assim)
        #expect(find("#SelecEmpresas_chznEmp").text).to eql 'PITANG CONSULTORIA E SISTEMAS SA'  (funciona assim para pegar só o que é relevante na mensagem) 
        expect(find("#SelecEmpresas_chznEmp")).to have_content 'PITANG CONSULTORIA E SISTEMAS SA'  #(Essa é uma sintaxe do capybara e é uma boa pratica)        
        find("#Tab8").click

        #tela 3
        #modal1
        page.has_css?('.options', wait: 40) 
        click_button 'Relatório - Ponto do Funcionário'
        sleep 5

        #modal1
        find(".conpass-close-button").click
        sleep 5
       
        #Tela3
        #Caixa de opções
        drop = find('#select_periodos')
        #drop.find('option', text:'16/10/2018 - 15/11/2018').select_option
        #Sample serve para agir randomicamente em um dropdown
        drop.all('option').sample.select_option
        sleep 2

        page.execute_script "window.scrollBy(0,500)"

        
        #check('checkboxCustom', from:'checkbox')
        #find(:css, "#RelCentesimal[value='']").set(true)
        #find(:xpath, '//*[@id="RelCentesimal"]').set(true)
       # find("input[type='checkbox'][value='#RelCentesimal.id']").set(true)
       #find('input[type=checkbox]').click
       #find('input[name=RelCentesimal]').click
        #find('input[value=""]').click
        #page.select '#checkbox', :from => 'RelCentesimal'
        #check ('RelCentesimal', from: 'checkbox')

        #check('//div[@class='checkboxCustom']')
        sleep 3
        
    
        
    

       
        
    
            
        
        
        
    end
    
end