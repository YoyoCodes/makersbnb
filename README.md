## The Posh Couch

The Posh Couch was a group project from week 6 of Makers Academy. After working with Ruby for almost 2 months and 1 week of Javascript, we were given the task to create an Air-Bnb clone project in our language of choice.

## Aproach
After an initial brainstorm session we were all excited about the idea of creating an app that uses Ruby on the server side and Javascript in the client side. We also had an in depth talk about our personal objectives for this project and and how we could aling them with the ultimate goal - creating well-tested polished final product.

We first decided on our MVP - being able to list "spaces" and discussed what extra features we could implement in the given time: introducing users that can sign up and log in, postin spaces as themselves and adding images for the listed spaces. 

Using a "gmail" gem we implemented the functionality of sending an email to the owner of a "space" to let him know somebody is interested in renting his propriety.

The forms are botstrap modals that guarantee the best user experience and avoid redirecting to other pages.

## Work ethic

Being our first project of this nature, we wanted to be very thorough in our workflow:
* having stand-ups, planning sessions and retros once a day
* working in pairs to ensure we had clean readable code and that everybody knew the codebase
* working on branches and making pull requests for others to review before merging to the master
* using a trello board to keep track of our project

**Greatest challenge:** learning to use github as a team, we almost lost our initial work after a git conflict

**What I learnt:**
* working in a team that has a common goal and where everybody is heard
* using github (branching, pull requests, aprooving/commenting, merging branches to master)
* agile methodology
* creating a rake file to help set up the project on different machines

**What I consolidated:**
*persistance via database
*MVC

## How to install/ set up a local database/ run code/ run tests

1. Clone the repo
2. Run `bundle install` to make sure you have the required dependencies
3. Create 'makersbnb' and 'makersbnb_test' databases drom the command line using `create db` 
4. Run `rake :setup` to set up the basic table structure on your machine (use :test_database_setup for the test database)
5. Run `rackup` from the comman line and open localhost:9292 in your browser
6. Use `rspec` to run the tests from the commnad line

### Final product
<a href="https://ibb.co/i059id"><img src="https://preview.ibb.co/eP2Bwy/The_Posh_Couch.png" alt="The_Posh_Couch" border="0"></a>
