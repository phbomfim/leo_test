##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.6.4]
- Rails [6.1.4]

##### 1. Check out the repository

```bash
git clone https://github.com/phbomfim/leo_test
cd leo_test
```

##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:migrate
```

##### 3. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000