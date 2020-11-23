# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Clinica.create!([
    { "name": "Psicóloga Thamires Eto", "address": "Av. Paranaguá, 2310", "latitude": "-23.48588157783749", "longitude": "-46.47997282366034"},
    { "name": "Psicóloga Cleonice Bonfim", "address": "Rua Miguel Rachid, 520", "latitude": "-23.493394297217186", "longitude": "-46.47399539406318"},
    { "name": "Psicólogo Lucas Montanha", "address": "R. Dr. Epitácio Pessoa, 456", "latitude": "-23.47569123116011", "longitude": "-46.53279402025335"},
    { "name": "Clínica Re'Florescer", "address": "R. Dr. Ângelo Vita, 43", "latitude": "-23.533251284364354", "longitude": "-46.56195005132"},
    { "name": "Clínica Analitikas", "address": "R. Costa Rêgo, 28", "latitude": "-23.530326632034054", "longitude": "-46.516545719634884"}
])
