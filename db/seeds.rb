# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Type.create(name: 'オーケストラ')
Type.create(name: '吹奏楽')
Type.create(name: 'アンサンブル')
Type.create(name: '合唱')

Region.create(name: '東京都内', sort_number: 1)
Region.create(name: '関東甲信越', sort_number: 2)
Region.create(name: '北海道・東北', sort_number: 3)
Region.create(name: '中部', sort_number: 4)
Region.create(name: '近畿・中国・四国', sort_number: 5)
Region.create(name: '九州', sort_number: 6)

Instrument.create(name: 'フルート', sort_number: 1)
Instrument.create(name: 'オーボエ', sort_number: 2)
Instrument.create(name: 'クラリネット', sort_number: 3)
Instrument.create(name: 'ファゴット', sort_number: 4)
Instrument.create(name: 'ホルン', sort_number: 11)
Instrument.create(name: 'トランペット', sort_number: 12)
Instrument.create(name: 'トロンボーン', sort_number: 13)
Instrument.create(name: 'チューバ', sort_number: 14)

