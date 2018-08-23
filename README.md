Please follow the steps to setup:

1.) Install ruby version 2.5.1

2.) Install rails version 5.2.0

3.) Install postgresql

5.) On the project root directory:

  a.) Run `bundle install`

  b.) rename database.yml.example to database.yml

  c.) Run `rake db:create`

  d.) restore database from attached backup file

  e.) run `rake db:migrate`

6.) run `rails s`


We have to forcefully make 2 changes:

1.) 'symbol' is a restricted name in ruby on rails, thats why I had to rename the model name to ExchangeSymbol. But, the table name is same

2.) The give sql files had no timestamps and rails queries will not work without them, so I had to add the created_at and updated_at columns in every table


Also, there was only one foriegn key in the sql file, so I had made only one association between ico and ico_members

