describe "Caixa de seleção", :teste do

    it 'Marcando uma checkbox' do
        visit 'http://automationpractice.com/index.php?id_category=3&controller=category'
        page.execute_script "window.scrollBy(0,500)"
        check('document.querySelector("#layered_category_4")')
        
        
    end
    
    
end
