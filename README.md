Write a short style guide

Use Devise

Models:

Users
Admins
Cards
Profile
Levels (?)
Credibility
Public Cards (user created, available to everyone inherit from cards)
Private Cards (user created, inherit from cards) determine public via boolean
Quizzes (at end of each level)


Controllers:

Sessions
Users
Admins
Users
Levels
Public Cards
Private Cards



features:
Users can sign up for account, create private or public cards. only allowed to create public cards if you have finished all the levels

Admins can create admins, can approve public cards, can create cards, can create/edit levels, delete users, create a user,  (on create, would need random key generated from other admin?)

Basic game: go through the levels (which consist of cards), and level up each time you complete cards

Credibility: you get a base credibility once you 

Advanced game feature: code snippets that are auto-detected to be correct or false (i.e. change color to red)

Other advanced game feature: users can complete against each other simultaneously in a challenge mode

Possible feature: speech recognitions

Quizzes (don't reveal answers if answer is wrong, passing is 80%, pulls a certain amount from group of questions to slightly randomize quiz each time)
