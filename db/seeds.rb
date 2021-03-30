# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WineStrain.destroy_all
WineOenologist.destroy_all
MagazineOenologist.destroy_all
Wine.destroy_all
Strain.destroy_all
Oenologist.destroy_all
Magazine.destroy_all
User.destroy_all

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

Wine.create!(
    [
        {
            name:'Cabernet Mix'
        },
        {
            name:'Merlot & Syrah'
        }
    ]
)

Strain.create!(
    [
        {
            name: 'Cabernet Sauvignon'
        },
        {
            name: 'Cabernet Franc'
        },
        {
            name: 'Merlot'
        },
        {
            name: 'Syrah'
        },
        {
            name: 'Malbec'
        },
        {
            name: 'Carmenere'
        },
        {
            name: 'Pinot Noir'
        }
    ]
)

Oenologist.create!(
    [
        {
            name: 'Enólogo Chileno',
            age: '38',
            nationality: 'Chile'
        },
        {
            name: 'Enólogo Argentino',
            age: '45',
            nationality: 'Argentina'
        },
        {
            name: 'Enólogo Francés',
            age: '48',
            nationality: 'Francia'
        }
    ]
)

Magazine.create!(
    [
        {
            name: 'La VinoTK Magazine'
        },
        {
            name: 'Valles de Chile'
        },
        {
            name: 'La CAV Magazine'
        }
    ]
)

WineStrain.create!(
    [
        {
            strain_id: Strain.first.id,
            wine_id: Wine.first.id,
            percent: 60
        },
        {
            strain_id: Strain.second.id,
            wine_id: Wine.first.id,
            percent: 40
        },
        {
            strain_id: Strain.third.id,
            wine_id: Wine.second.id,
            percent: 50
        },
        {
            strain_id: Strain.fourth.id,
            wine_id: Wine.second.id,
            percent: 50
        }
    ]
)
