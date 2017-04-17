# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Users
User.create(name: 'Ronaldo da Costa Bispo', document: '300.001.788-89', phone: '14999999999', kind: :manager, status: :active, notes: 'Possui todas as permissões no sistema', email: 'rcosta.bispo@gmail.com', password: '123456', admin: true)
User.create(name: 'Usuario comum', document: '111.222.333-44', phone: '14988888888', kind: :employee, status: :active, notes: 'Possui somente algumas permissões no sistema', email: 'user.default@gmail.com', password: '123456')
