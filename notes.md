1 - After making a change to the database that requires a migration, go to the app's console on DigitalOcean and run the following in order to migrate the database on DigitalOcean: RAILS_ENV=production bin/rails db:migrate

2 - Security concern:  I am using http_basic_authenticate_with, with some hard-coded
values from the tutorial.  They suggest using Devise or Authlogic gems.  They also suggest studying https://guides.rubyonrails.org/security.html


