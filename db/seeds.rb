# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Politic.create \
  [
    { name: 'Ciro Gomes', state: 'São Paulo', city: 'Pindamonhangaba', part: 'PDT', age: 60 },
    { name: 'Geraldo Alckmin', state: 'São Paulo', city: 'Pindamonhangaba', part: 'PSDB', age: 60 },
    { name: 'Jair Bolsonaro', state: '-', city: '-', part: '-', age: 60 },
    { name: 'Lula', state: '-', city: '-', part: '-', age: 60 },
    { name: 'Rodrigo Maia', state: '-', city: '-', part: '-' },
    { name: 'Manuela DAvila', state: '-', city: '-', part: '-' },
    { name: 'Marina Silva', state: '-', city: '-', part: '-' },
    { name: 'Alvaro Dias', state: '-', city: '-', part: '-' },
    { name: 'Guilherme Boulos', state: '-', city: '-', part: '-' },
    { name: 'Henrique Meirelles', state: '-', city: '-', part: '-' }
  ]

alckmin = Politic.find_by(name: 'Geraldo Alckmin')
declared_goods = [
    { description: 'GLEBA DE TERRAS COM 3,9 HA, EM PINDAMONHANGABA-SP', value: 30091.98 },
    { description: '1/3 DO IMÓVEL RURAL HERDADO DE SEU PAI', value: 20000.00 },
    { description: 'CHEVROLET MONTANA, 2006/2007', value: 34000.00 },
    { description: 'AÇÕES PETROBRAS', value: 1711.00 },
    { description: 'BAIRRO CRISPIM, PINDAMONHANGABA-SP', value: 27758.52 },
    { description: 'SALDO EM CONTA CORRENTE SANTANDER PINDAMONHANGABA', value: 1004.14 },
    { description: 'AÇÕES DA CSN - COMPANHIA SIDERÚRGICA NACIONAL', value: 8676.00 },
    { description: '80% DO CAPITAL SOCIAL DA HUMANITAS, FORUM, PALESTRAS & CULTURAS LTDA', value: 24000.00 },
    { description: 'EDIFÍCIO PITANGUEIRAS, SAO PAULO-SP', value: 323806.03 },
    { description: 'SÍTIO MODELO, COM 8,4 HA, EM PINDAMONHANGABA-SP', value: 110959.51 },
    { description: 'SALDO EM CONTA CORRENTE BANCO DO BRASIL', value: 15646.74 },
    { description: 'APLICAÇÃO SANTANDER', value: 76117.92 },
    { description: '43 CABEÇAS DE GADO BOVINO', value: 68000.00 },
    { description: 'FUNDO DE PREVIDÊNCIA BRASILPREV', value: 164594.31 },
    { description: 'SALDO EM CONTA CORRENTE SANTANDER', value: 11019.70 },
    { description: 'LETRA DE CRÉDITO AGRONEGÓCIO', value: 99289.45 },
    { description: 'BAIRRO CAMPO ALEGRE, PINDAMONHANGABA-SP', value: 52822.98 }
  ]
alckmin.declared_goods.create(declared_goods)


