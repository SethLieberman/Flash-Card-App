# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Card.create([
	{question:"What does HTML stand for", answer:"Hypertext Markup Language", level_id: 1, admin_id: 1},
	{question:"What is <>", answer:"Carrot", level_id: 1, admin_id: 1},
	{question:"What is love", answer:"baby don't hurt me", level_id: 1, admin_id: 1},
	{question:"Hello", answer:"It's me", level_id: 1, admin_id: 1},
	{question:"Life", answer:"42", level_id: 2, admin_id: 1},
	{question:"Blah baljh", answer:"afawefaew", level_id: 2, admin_id: 1},
	{question:"awhefl;a", answer:"wgna'wenglanw", level_id: 3, admin_id: 1},
	{question:"kjabef;kjba;ewf", answer:"a;oiwefhoa", level_id: 4, admin_id: 1},
	{question:"a;kaewf;ajk", answer:"a;oweifha'owe", level_id: 5, admin_id: 1}
	])


User.create([
	{email:"seth@seth.com", password: "12345678"},
	{email:"jim@jim.com", password: "12345678"},
	{email:"bob@bob.com", password: "12345678"},
	{email:"tom@tom.com", password: "12345678"},
	{email:"tina@tina.com", password: "12345678"}
	])

PublicCard.create([
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 1},
	{question:"How to you escape IRB to execute a command in Bash?", answer:"Use back ticks `` ", tag: "bash", user_id: 1},
	{question:"Blah Blha", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 2},
	{question:"What does AJAwqfqfr?", answer:"Asynchrqwft as XML", tag: "AJAX", user_id: 3}
	])



