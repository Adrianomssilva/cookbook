require 'rails_helper'

describe "Admin cria um grupo de receitas" do

  it 'chega na página de cadastro de grupo' do
  admin = create(:user, email: 'admin@email.com',
                          password: '123456', role: :admin)
  login_as admin, scope: :user
  visit root_path
  click_on 'Cadastrar grupo de receitas'


  expect(page).to have_content 'Cadastre um novo grupo'
  end

  it 'chega na página de cadastro de grupo' do
  admin = create(:user, email: 'admin@email.com',
                          password: '123456', role: :admin)
  login_as admin, scope: :user
  visit root_path
  click_on 'Cadastrar grupo de receitas'
  fill_in "Nome",	with: "Receitas de natal"
  click_on 'Criar Group'


  expect(page).to have_content 'Cadastre um novo grupo'
  end


end
