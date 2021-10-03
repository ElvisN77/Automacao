describe "Meu primeiro script" do

    #it 'visitar uma pagina' do
        #visit 'http://automationpractice.com/index.php'
        #expect(page.title).to eql 'My Store'  
        
    #end

    it 'visitar um pagina' do
        visit 'https://www.dimepkairos.com.br/'
        expect(page.title).to eql 'kairos' 
        
    end

   # it 'visitar pagina' do

       # visit 'https://training-wheels-protocol.herokuapp.com/'
       # expect(page.title).to eql 'Training Wheels Protocol'           
        
  #  end
    
end


