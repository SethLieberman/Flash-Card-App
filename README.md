#NYCDA Flash Cards
---
##A gamified study guide

###Purpose:
This application aims to make the vast amount of information that the NYCDA teaches its students into a fun, gamified study guide
---
NYCDA students have often said that they will learn a language or topic (i.e. Javascript) one week, but then have to do some serious re-reading of lecture material when the course comes back to that topic, owning to the nature of a fast-paced coding boot-camp. This app aims to make the material re-call much more fun and easier. Hopefully, the students will also learn more in the long run.

##Features:

* Makes use of Devise for authentication
* An admin model, to control all aspects of the site and to verify user created content is correct
* Flash cards organized into levels, that correspond with the NYCDA WDI curriculum
* Sets of public flash cards, created by users who have completed all the levels
* Quizzes to test knowledge
* Possible feature: one on one timed challenges
* Possible feature: auto-detect correct code snippet challenges as you type

##Usage:

###General:
The user will sign up for an account, and be directed to their dashboard. The user can then start working through the first level of flash cards, roughly equivalent to the first week of the NYCDA WDI course. When the user feels they are ready, the can choose to take the level's quiz. If they pass with 80% or higher, then they may advanced. If not, they may take the quiz again. The quizzes are created randomly from a list of possible questions.

###Public cards:
Once the user has achieved all the levels, they may contribute to the public cards database. The idea is that if the user has extensive knowledge on a particular topic, they can create flash cards on that topic that others may view and study.

* A possible extension of this is for user created quizzes and levels.

###Private cards:
A user may create private cards at any time. These are for their own personal use, and are only viewable by the user who created them. An admin does not have access to private cards. They are for general note-taking and to fill in any gaps that the user feels the pre-loaded cards did not address.

###Credibility:
Credibility addresses the concern that a user may not know whether a fact stated on a public card should be considered legitimate or not. The user accrues credibility by completing each level. When the last level is complete, the user will have enough credibility to create public cards. If the card is upvoted, the user gain credibility. If the card is down voted, the user loses credibility. There is a margin for error built in after the last level is achieved, lest the user's first created card gets heavily down voted, and an admin can always adjust the credibility if there is an error.

###Future plans:

* Scalable to other NYCDA courses, such as iPhone app dev, the front-end night classes, and any future classes
* Scalable to other coding boot camps

####This application was created by Seth, Alan, and Richard.
