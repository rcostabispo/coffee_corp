# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Users
User.create(name: 'Ronaldo da Costa Bispo', document: '300.001.788-89', phone: '14999999999', status: :active, notes: 'Possui todas as permissões no sistema', email: 'rcosta.bispo@gmail.com', password: '123456', admin: true)
User.create(name: 'Usuario comum', document: '111.222.333-44', phone: '14988888888', status: :active, notes: 'Possui somente algumas permissões no sistema', email: 'user.default@gmail.com', password: '123456')

# Products
Product.create(description: 'Açucar Cristal', notes: 'Somente nas cores brancas e amarela. Light não!!')
Product.create(description: 'Malto', notes: 'Acima de 60Kg')

# Suppliers
Supplier.create(company_name: 'Açucareira Boa Vista', fantasy_name: 'Açucareira Boa Vista LTDA',
  document: '54.521.703/0001-94', individual_businessman: '417.062.132.114', zip_code: '13486-338',
  address: 'Angelo Santa Rosa', number: '167', neighborhood: 'Centro da Cidade', state: 'SP', city: 'Limeira',
  principal_activity: 'Produção e venda de produtos provenientes da cana de açúcar',
  delivery_time: '2 dias', request_time: '', freight_type: :cif, payment_conditions: '28/35 dias')

# Supplier.create(company_name: '', fantasy_name: '', document: '', individual_businessman: '', zip_code: '', address: '', number: '', neighborhood: '', state: '', city: '', principal_activity: '', delivery_time: '', request_time: '', freight_type: '', payment_conditions: '')
Supplier.create(
  company_name:           'COMPANHIA NACIONAL DE ABASTECIMENTO-CONAB',
  fantasy_name:           'SUPERINTENDENCIA REGIONAL AMAPA',
  document:               '26.461.699/0478-10',
  individual_businessman: '03.034701-7',
  zip_code: '68900-099',
  address: 'AV IRACEMA CARVAO NUNES',
  number: '267',
  neighborhood: 'CENTRAL',
  state: 'PA',
  city: 'MACAPA',
  principal_activity: 'ADMINISTRAÇÃO PÚBLICA EM GERAL',
  delivery_time: '5 dias',
  request_time: '2 dias',
  freight_type: :fob,
  payment_conditions: '30 dias'
)
