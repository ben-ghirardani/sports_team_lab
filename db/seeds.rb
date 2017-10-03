# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.delete_all
Team.delete_all
Game.delete_all
League.delete_all

team1 = Team.create( { name: "Hearts", stadium: "Tynecastle" } )
team2 = Team.create( { name: "Hibs", stadium: "Easter Road" } )

Player.create ( { team_id: team1.id, name: "Dave", position: "Forward" } )
Player.create ( { team_id: team2.id, name: "Clive", position: "Defender" } )

league1 = League.create( { name: "Premiership" } )
league2 = League.create( { name: "League 1" } )

Game.create( { home_team: team1.id, away_team: team2.id, location: team1.stadium, score: "0 - 0", league: league1 } )
Game.create( { home_team: team2.id, away_team: team1.id, location: team2.stadium, score: "1 - 1", league: league2 } )