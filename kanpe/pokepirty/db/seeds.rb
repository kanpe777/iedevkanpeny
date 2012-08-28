# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pokedb.delete_all
Pokedb.create(number:          001,
              image_url:       'poke/n1.gif',
              name:            'フシギダネ',
              type1:           'くさ',
              type2:           'どく',
              characteristic1: 'しんりょく',
              characteristic2: 'ようりょくそ',
              characteristic3: '',
              baseh:           45,
              basea:           49,
              baseb:           49,
              basec:           65,
              based:           65,
              bases:           45)

