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
	{question:"FTP", answer:"One of the many ways to move your website to another computer (the server) that can host it with better uptime", level_id: 1, admin_id: 1},
	{question:"GitHub", answer:"A website that hosts git repositories that allows you to easily push repos to it and then view the commits and code contained in an easy to use interface.", level_id: 1, admin_id: 1},
	{question:"SSH", answer:"A pseudo-acronym that stands for Secure Shell. It provides a protocol for secure communication between a client (your computer) and a remote server.", level_id: 1, admin_id: 1},
	{question:"JavaScript", answer:"A client-side scripting language that is meant to run entirely on the user's browser.", level_id: 2, admin_id: 1},
	{question:"Arrays", answer:"They hold a collection of data that can be multiple data types. Can also be stored as variables.", level_id: 2, admin_id: 1},
	{question:"Function", answer:"A way to encapsulate code for later use. It can take arguments, which are used as variables inside the function. It usually returns a value, which can be used later on or immediately.", level_id: 3, admin_id: 1},
	{question:"jQuery", answer:"A self described wrtie les, do more library for JavaScript. Can be marginally slower. ", level_id: 4, admin_id: 1},
	{question:"JavaScript Data Types", answer:"String, Number, Boolean and Undefinded.", level_id: 5, admin_id: 1}
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
	{fname: "seth", lname: "helllooooo", credibility: 0, level: 1, username: "helllooooosettthhh", user_id: 1, avatar: File.new("app/assets/images/missing.png")},
	{fname: "jim", lname: "halpert", credibility: 400, level: 4, username: "user2", user_id: 2, avatar: File.new("app/assets/images/missing.png")},
	{fname: "bob", lname: "from account", credibility: 500, level: 5, username: "user3", user_id: 3, avatar: File.new("app/assets/images/missing.png")},
	{fname: "tom", lname: "hanks", credibility: 600, level: 6, username: "user4", user_id: 4, avatar: File.new("app/assets/images/missing.png")},
	{fname: "tina", lname: "superuser", credibility: 1200, level: 12, username: "user5", user_id: 5, avatar: File.new("app/assets/images/missing.png")}
	])

PublicCard.create([
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 1},
	{question:"How to you escape IRB to execute a command in Bash?", answer:"Use back ticks `` ", tag: "bash", user_id: 1},
	{question:"Blah Blha", answer:"Asynchronous JavaScript as XML", tag: "AJAX", user_id: 2},
	{question:"What does AJAwqfqfr?", answer:"Asynchrqwft as XML", tag: "AJAX", user_id: 3}
	])


Level.create([
	{quiz_id: 1},
	{quiz_id: 2},
	{quiz_id: 3},
	{quiz_id: 4},
	{quiz_id: 5}
	])

Question.create([
	{question:"What is a Web Server?", answer:"A computer in the cloud networked to all other computers connected to the web that holds the content to be served.", quiz_id: 1},
	{question:"What is the Internet?", answer:"The network infrastructure that interconnects hosts with clients.", quiz_id: 1},
	{question:"What are the parts of a Website?", answer:"HTML (content markup), CSS (layout and styling), JavaScript (client-side behavior), and Ruby, PHP, or Python (server-side behavior).", quiz_id: 1},
	{question:"What is HTML?", answer:"Hypter Text Markup Language.", quiz_id: 1},
	{question:"What is CSS?", answer:"Cascading Style Sheets.", quiz_id: 1},
	{question:"What are CSS Classes?", answer:"An HTML attribute whose value is used to classify one or more elements on a page. <div class='name'> </div>", quiz_id: 1},
	{question:"What is the Terminal?", answer:"An interface to a lower lever of your computer than the GUI. Every command must be typed in. The mouse is not used to interact with the it.", quiz_id: 1},
	{question:"What is VIM?", answer:"A command line text editor that runs in your chosen terminal application.", quiz_id: 3},
	{question:"What are basic JavaScript Data Types?", answer:"string, numbers, boolean and undefined.", quiz_id: 3},
	{question:"What are Arrays?", answer:"They hold a collection of data that can be multiple data types and can be stored as a variable.", quiz_id: 4},
	{question:"What does AJAX stand for?", answer:"Asynchronous JavaScript as XML", quiz_id: 4},
	{question:"What is a Function?", answer:"A way to encapsulate code for later use. They can take arguments, which are used as variables inside of it. They usually return a value, which can be used later on or displayed immediately.", quiz_id: 4}
	])

Quiz.create([
	{name: "Quiz 1", level_id: 1},
	{name: "Quiz 2", level_id: 2},
	{name: "Quiz 3", level_id: 3},
	{name: "Quiz 4", level_id: 4},
	])


PrivateCard.create([
	{question:"What is a questions?", answer:"Dont Ask", tag: "random", user_id: 1, description: "A Question"},
	{question:"Where am I?", answer:"Lost", tag: "random", user_id: 1, description: "A 2 Question"},
	{question:"Who are you?", answer:"Seth", tag: "random", user_id: 2, description: "A 3 Question"},
	{question:"Why is the sky blue?", answer:"Why Not", tag: "random", user_id: 2, description: "A 4 Question"},
	{question:"Sushi?", answer:"Yes Please", tag: "random", user_id: 3, description: "A 5 Question"},
	{question:"How did I get here?", answer:"Booze", tag: "random", user_id: 3, description: "A 6 Question"},
	])



