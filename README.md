sample edits for push from bislig surigao sur....


views-reports
=============

Designs and html/css/js for reports &amp; related, part of Infinite Shelter .com

instructions for designers.

This repository: https://github.com/computational-arts-corp/views-reports

Can you check it out and run the following commands (use cygwin or some other way of runing unix commands):

git clone git@github.com:computational-arts-corp/views-reports.git
cd views-reports
git submodule init
git submodule update
bundle install
bundle exec rake db:seed
rails server

then in your browser, a page should be available at http://localhost:3000

the files of interest for you are:
app/views/layouts/application.html.haml
app/views/reports/show.html.haml
lib/ish-lib/assets/stylesheets

Insightful information may be posted here: http://infiniteshelter.com/tags/show/Ish-dev which is a tag for articles relating to the development of InfiniteShelter.com.