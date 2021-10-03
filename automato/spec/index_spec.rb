describe "Meu primeiro script" do
    before(:each) do
        visit 'http://automationpractice.com/index.php'
    end    

    it 'visitar um pagina e navegar para outra e voltar' do
        
               
        click_link 'Contact Us'      
        click_link 'My Store'

        click_link 'Sign in'
        click_link 'My Store'

        fill_in "search_query_top", with: "Blouse"
        click_button 'submit_search'

        click_link 'My Store'
        
        click_link 'View my shopping cart'
        click_link 'My Store'
    end    


    it 'deslizar sobre o elemento e clicar e voltar' do
        

        find('#block_top_menu > ul > li:nth-child(1) > a').hover
        

        #find('#block_top_menu > ul > li:nth-child(1) > a').click
        find('#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(1) > ul > li:nth-child(1) > a').click
        
        click_link 'My Store'

        find('#block_top_menu > ul > li:nth-child(1) > a').hover
        

        find('#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(1) > ul > li:nth-child(2) > a').click
        
        click_link 'My Store'
    end    




    it 'Navegar para outra pagina e voltar' do
      

        find('#block_top_menu > ul > li:nth-child(2) > a').hover
        

        find('#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(1) > a').click
        
        click_link 'My Store'

        find('#block_top_menu > ul > li:nth-child(2) > a').hover
        

        find('#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(2) > a').click
        
        click_link 'My Store'

        find('#block_top_menu > ul > li:nth-child(2) > a').hover
        

        find('#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(3) > a').click
        
        click_link 'My Store'

        find('#block_top_menu > ul > li:nth-child(3) > a').click
        
        click_link 'My Store'

        #find('#homeslider > li:nth-child(4) > a > img').click
    end
   

end
