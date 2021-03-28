# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
WineStrain.destroy_all
Wine.destroy_all
Strain.destroy_all

Strain.create!(
    [
        {
            name: 'Cabernet Sauvignon'
        },
        {
            name: 'Cabernet Franc'
        },
        {
            name: 'Syrah'
        },
        {
            name: 'Tannat'
        },
        {
            name: 'Malbec'
        },
        {
            name: 'Bonarda'
        },
        {
            name: 'Petit Verdot'
        },
        {
            name: 'Merlot'
        },
        {
            name: 'Carmenere'
        },
        {
            name: 'Sangiovese'
        },
        {
            name: 'Tempranillo'
        },
        {
            name: 'Marselan'
        },
        {
            name: 'Pinot Noir'
        },
        {
            name: 'Carignan'
        },
        {
            name: 'Cinsaunt'
        }
    ]
)

User.create!(
    [
        {
            name: 'Peter',
            email: 'peter@vinotk.cl',
            password: 'qwerty123',
            admin: 'true'
        },
        {
            name: 'Amigo Uno',
            email: 'amigouno@mail.com',
            password: 'qwerty123'
        },
        {
            name: 'Amigo Dos',
            email: 'amigodos@mail.com',
            password: 'qwerty123'
        }
    ]
)
