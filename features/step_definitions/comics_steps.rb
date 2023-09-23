
Given("que eu tenha uma chave de API válida da Marvel") do
    @ts = "1"
    @api_key = "7b07ab2535dac780a358437f7770db2f"
    @hash = "d5132f8e4bcecb259b0a16da557d6d91"
    @comics_page = ComicsPage.new(@ts, @api_key, @hash)
  end
  
  When("eu fizer uma requisição para o endpoint de histórias em quadrinhos") do
    @response = @comics_page.get_comics
    @comics_data = JSON.parse(@response.body)
  end
  
  Then("o total de registros deve ser igual ao valor do campo limit") do
    result = @comics_data['data']['results'].length
    expect(result).to eq(@comics_data['data']['limit'])
  end
  
  Then('eu devo validar as informações da história em quadrinho do Ant-Man') do
    @ant_man_comics_ids = @comics_data['data']['results'].select { |comic| comic['title'].include?('Ant-Man') }.map { |comic| comic['id'] }
    puts "Ant-Man aparece em #{@ant_man_comics_ids.length} registros:"
    @ant_man_comics_ids.each do |id|
      puts id
      response = @comics_page.get_comics_by_id(id)
      comic_data = JSON.parse(response.body)['data']['results'][0]
      expect(comic_data['title']).to include('Ant-Man')
    end  
  end