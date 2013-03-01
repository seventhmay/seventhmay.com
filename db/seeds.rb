# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

App.create(name: 'rss-maker', url: 'http://safe-forest-6846.herokuapp.com/feeds', description: 'Scraping html and serve as atom feed. Private.')
