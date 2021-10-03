describe "Caixa de opções", :dropdown do


    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 4
        
    end
    it 'item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
       
        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option
        sleep 4
        
    end
    
    #Sample serve para agir randomicamente em um dropdown
    it 'Qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
       
        drop = find('.avenger-list')
        drop.all('option').sample.select_option

        
    end
    
end
