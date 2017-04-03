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
Type.create(name: '大編成')
Type.create(name: 'サブカル系')

Region.create(name: '東京都内', sort_number: 1)
Region.create(name: '関東甲信越', sort_number: 2)
Region.create(name: '北海道・東北', sort_number: 3)
Region.create(name: '中部', sort_number: 4)
Region.create(name: '近畿・中国・四国', sort_number: 5)
Region.create(name: '九州', sort_number: 6)

InstrumentCategory.create(name: '木管楽器')
InstrumentCategory.create(name: '金管楽器')
InstrumentCategory.create(name: '弦楽器')
InstrumentCategory.create(name: '打楽器')
InstrumentCategory.create(name: '合唱')
InstrumentCategory.create(name: 'その他')

Instrument.create(name: 'フルート', sort_number: 1, short_name: 'Fl', instrument_category_id: 1)
Instrument.create(name: 'オーボエ', sort_number: 2, short_name: 'Ob', instrument_category_id: 1)
Instrument.create(name: 'クラリネット', sort_number: 3, short_name: 'Cl', instrument_category_id: 1)
Instrument.create(name: 'ファゴット', sort_number: 4, short_name: 'Fg', instrument_category_id: 1)
Instrument.create(name: 'ホルン', sort_number: 11, short_name: 'Hr', instrument_category_id: 2)
Instrument.create(name: 'トランペット', sort_number: 12, short_name: 'Tp', instrument_category_id: 2)
Instrument.create(name: 'トロンボーン', sort_number: 13, short_name: 'Tb', instrument_category_id: 2)
Instrument.create(name: 'チューバ', sort_number: 14, short_name: 'Tu', instrument_category_id: 2)
Instrument.create(name: 'ヴァイオリン', sort_number: 21, short_name: 'Vn', instrument_category_id: 3)
Instrument.create(name: '1stヴァイオリン', sort_number: 22, short_name: '1stVn', instrument_category_id: 3)
Instrument.create(name: '2stヴァイオリン', sort_number: 23, short_name: '2ndVn', instrument_category_id: 3)
Instrument.create(name: 'ヴィオラ', sort_number: 24, short_name: 'Va', instrument_category_id: 3)
Instrument.create(name: 'チェロ', sort_number: 25, short_name: 'Vc', instrument_category_id: 3)
Instrument.create(name: 'コントラバス', sort_number: 26, short_name: 'Cb', instrument_category_id: 3)
Instrument.create(name: 'パーカッション', sort_number: 31, short_name: 'Perc', instrument_category_id: 4)

