
describe "Caixa de opções", :checkbox do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end
    it 'marcando uma opção' do
        #visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
        
        check('thor')   
    end

    after(:each)do
        sleep 3
    end
    
end
