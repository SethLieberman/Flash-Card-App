# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Card.create([
	{question:"Web Server / Host", answer:"a computer in “the cloud” networked to all other computers connected to the web that holds the content to be served", level_id: 1, admin_id: 1},
	{question:"What is the Internet", answer:"the network infrastructure that interconnects hosts with clients", level_id: 1, admin_id: 1},	
	{question:"Client: Consumer Machines", answer:"these machines request resources from web server hosts which are then rendered on the machines by the web browser", level_id: 1, admin_id: 1},
	{question:"Part of a Website", answer:"HTML- content markup, CSS- layout/styling, JavaScript- client-side behavior, Ruby, PHP, or Python- server-side behavior", level_id: 1, admin_id: 1},
	{question:"HTML", answer:"Hyper Text Markup Language, Marks up text, With CSS, associates style information, Contains tags and regular text", level_id: 1, admin_id: 1},
	{question:"What does HTML stand for", answer:"Hypertext Markup Language", level_id: 1, admin_id: 1},
	{question:"Creating an HTML file", answer:"What you see, what the browser. Can be created in any plain text editor as a plain text file that ends in .htm or .html", level_id: 1, admin_id: 1},
	{question:"HTML Tags", answer:"Enclosed in 2 angle brackets, A closing tag has a / before the keyword", level_id: 1, admin_id: 1},
	{question:"HTML Attributes", answer:"Come in name/value pars like: name=‘value’", level_id: 1, admin_id: 1},
	{question:"Head Section", answer:"Contains more than just the title of your document, Encloses external files (CSS, JavaScript, etc), You can also create CSS or JavaScript directly inside", level_id: 1, admin_id: 1},
	{question:"Body Section", answer:"Contains everything that the user sees on their screen, Uses HTML tags to demarcate content like <p> and <div>", level_id: 1, admin_id: 1},
	{question:"<a> Tag", answer:"A link tag that is used to link to other pages on the web and to other sections of the document itself, Requires an href attribute to tell the browser where to go when the link is clicked, The target attribute can be given a value of _blank to open the link in a new tab", level_id: 1, admin_id: 1},
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

# fname, lname, credibility, level, username, user_id
Profile.create([
	{fname: "seth", lname: "helllooooo", credibility: 0, username: "helllooooosettthhh", user_id: 1},
	{fname: "jim", lname: "halpert", credibility: 1000, username: "user2", user_id: 2},
	{fname: "bob", lname: "from account", credibility: 2000, username: "user3", user_id: 3},
	{fname: "tom", lname: "hanks", credibility: 3000, username: "user4", user_id: 4},
	{fname: "tina", lname: "superuser", credibility: 9001, username: "user5", user_id: 5}
	])

PublicCard.create([
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 1},
	{question:"How to you escape IRB to execute a command in Bash?", answer:"Use back ticks `` ", tag: "bash", user_id: 1},
	{question:"Blah Blha", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 2},
	{question:"What does AJAwqfqfr?", answer:"Asynchrqwft as XML", tag: "AJAX", user_id: 3}
	])


Level.create([
	{card_id: 1, quiz_id: 1},
	{card_id: 2, quiz_id: 2},
	{card_id: 3, quiz_id: 3},
	{card_id: 4, quiz_id: 4}
	])

Question.create([
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 1},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 1},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 1},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 2},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 2},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 2},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 3},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 3},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 3},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 4},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 4},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 4}
	])

Quiz.create([
	{name: "Quiz 1", level_id: 1},
	{name: "Quiz 2", level_id: 2},
	{name: "Quiz 3", level_id: 3},
	{name: "Quiz 4", level_id: 4}
	])


PrivateCard.create([
	{question:"What is a questions?", answer:"Dont Ask", tag: "random", user_id: 1, description: "A Question"},
	{question:"Where am I?", answer:"Lost", tag: "random", user_id: 1, description: "A 2 Question"},
	{question:"Who are you?", answer:"Seth", tag: "random", user_id: 2, description: "A 3 Question"},
	{question:"Why is the sky blue?", answer:"Why Not", tag: "random", user_id: 2, description: "A 4 Question"},
	{question:"Sushi?", answer:"Yes Please", tag: "random", user_id: 3, description: "A 5 Question"},
	{question:"How did I get here?", answer:"Booze", tag: "random", user_id: 3, description: "A 6 Question"},
	])



