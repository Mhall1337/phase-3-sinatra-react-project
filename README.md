This app was created to give people interested in SpaceX's rocket program the opportunity to easily read some fun data about each launch. The information I selected to display is the name of each rocket launched, detailed information about how or why a particular rocket launch failed, a boolean value of whether it was successful or not, and the flight number. The additional functionality of creating your own private company and its associated launches was added to allow a user to manually add data from a different company of their choosing or something of their own imagination.

All you need to do for this app to work is enter the following commands in your terminal, starting with installing the gems:

bundle install

Then you'll need to run the migrations with:

bundle exec rake db:migrate

Seed the database:

bundle exec rake db:seed

And finally, run the server:

rake server

You'll then need to open the front end directory and start the front end server with:

npm start



Now you're ready to go!