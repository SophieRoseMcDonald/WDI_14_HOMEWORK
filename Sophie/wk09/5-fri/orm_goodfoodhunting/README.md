//NOTES//

Indroduction to Active Record.
#settings for active_record
require 'active_record'
options = {
  adapter: 'postgressql'
  database: 'goodfoodhunting'
  username: 'sophie' # username is only required for ubuntu
}
ActiveRecord::Base.establish_connection(options)

```
MacBook-Pro-2:orm_goodfoodhunting sophie$ touch app_console.rb
MacBook-Pro-2:orm_goodfoodhunting sophie$ ruby app_console.rb

From: /Users/sophie/wdi/code_alongs/05_database/orm_goodfoodhunting/app_console.rb @ line 6 :

    1: require 'pry'
    2: require_relative 'db_config'
    3: require_relative 'models/dish'
    4:
    5: binding.pry
 => 6: puts ' app console'

[1] pry(main)> Dish.all
=> [#<Dish:0x007fe8f7895228
  id: 1,
  name: "pudding",
  image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">,
 #<Dish:0x007fe8f6db3080 id: 3, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6db2f40 id: 4, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6db2e00 id: 5, name: "Fried Chicken", image_url: "">,
 #<Dish:0x007fe8f6db2cc0 id: 6, name: "Coconut", image_url: "">,
 #<Dish:0x007fe8f6db2b80
  id: 7,
  name: "coconut",
  image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">]
[2] pry(main)> Dish.all
=> [#<Dish:0x007fe8f6e083c8
  id: 1,
  name: "pudding",
  image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">,
 #<Dish:0x007fe8f6e08288 id: 3, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6e08148 id: 4, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6e08008 id: 5, name: "Fried Chicken", image_url: "">,
 #<Dish:0x007fe8faa33c80 id: 6, name: "Coconut", image_url: "">,
 #<Dish:0x007fe8faa338c0
  id: 7,
  name: "coconut",
  image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">]
[3] pry(main)> Dish.first
=> #<Dish:0x007fe8f78c5fe0
 id: 1,
 name: "pudding",
 image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">
[4] pry(main)> Dish.last
=> #<Dish:0x007fe8f80d5190
 id: 7,
 name: "coconut",
 image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">
[5] pry(main)> Dish.all
=> [#<Dish:0x007fe8f80ef900
  id: 1,
  name: "pudding",
  image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">,
 #<Dish:0x007fe8f80ef7c0 id: 3, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f80ef680 id: 4, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f80ef540 id: 5, name: "Fried Chicken", image_url: "">,
 #<Dish:0x007fe8f80ef400 id: 6, name: "Coconut", image_url: "">,
 #<Dish:0x007fe8f80ef2c0
  id: 7,
  name: "coconut",
  image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">]
[6] pry(main)> Dish.find(1)
=> #<Dish:0x007fe8fad41dc8
 id: 1,
 name: "pudding",
 image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">
[7] pry(main)> Dish.new
=> #<Dish:0x007fe8fad71438 id: nil, name: nil, image_url: nil>
[8] pry(main)> d1 = Dish.new
=> #<Dish:0x007fe8f78fda30 id: nil, name: nil, image_url: nil>
[9] pry(main)> d1.name = "fried rice'
[9] pry(main)*
[9] pry(main)> d1.name = "friend rice"
=> "friend rice"
[10] pry(main)> d1.save
=> true
[11] pry(main)> Dish.all
=> [#<Dish:0x007fe8f6f396c0
  id: 1,
  name: "pudding",
  image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">,
 #<Dish:0x007fe8f6f39580 id: 3, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6f39440 id: 4, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f6f39300 id: 5, name: "Fried Chicken", image_url: "">,
 #<Dish:0x007fe8f6f391c0 id: 6, name: "Coconut", image_url: "">,
 #<Dish:0x007fe8f6f39080
  id: 7,
  name: "coconut",
  image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">,
 #<Dish:0x007fe8f6f38f40 id: 8, name: "friend rice", image_url: nil>]
[12] pry(main)> Dish.create(name:'super pudding')
=> #<Dish:0x007fe8f6f71d40 id: 9, name: "super pudding", image_url: nil>
[13] pry(main)> Dish.all
=> [#<Dish:0x007fe8f81f4b20
  id: 1,
  name: "pudding",
  image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">,
 #<Dish:0x007fe8f81f49e0 id: 3, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f81f48a0 id: 4, name: "Pho", image_url: "">,
 #<Dish:0x007fe8f81f4760 id: 5, name: "Fried Chicken", image_url: "">,
 #<Dish:0x007fe8f81f4620 id: 6, name: "Coconut", image_url: "">,
 #<Dish:0x007fe8f81f44e0
  id: 7,
  name: "coconut",
  image_url: "https://coconut-merchant.com/wp-content/uploads/Brown-Coconut.jpg">,
 #<Dish:0x007fe8f81f43a0 id: 8, name: "friend rice", image_url: nil>,
 #<Dish:0x007fe8f81f4260 id: 9, name: "super pudding", image_url: nil>]
[14] pry(main)> d1.class
=> Dish(id: integer, name: string, image_url: string)
[15] pry(main)> d1.id
=> 8
[19] pry(main)> 'dish'.pluralize
=> "dishes"
[22] pry(main)> Dish.where(name: 'super pudding')
=> [#<Dish:0x007fe8fb948ea0 id: 9, name: "super pudding", image_url: nil>]
[23] pry(main)> Dish.count
=> 8
[24] pry(main)> d1.delete
=> #<Dish:0x007fe8f78fda30 id: 8, name: "friend rice", image_url: nil>
[25] pry(main)> Dish.count
=> 7
[26] pry(main)>[26] pry(main)> Dish.find(3).delete
=> #<Dish:0x007fe8fba32960 id: 3, name: "Pho", image_url: "">
```

```
[1] pry(main)> some_dish = Dish.first
=> #<Dish:0x007fa397205868
 id: 1,
 name: "pudding",
 image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">
[2] pry(main)> some_dish
=> #<Dish:0x007fa397205868
 id: 1,
 name: "pudding",
 image_url: "https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg">
[3] pry(main)> some_dish.id
=> 1
```
```
USING app_console to check if database is working:
[1] pry(main)> c1
NameError: undefined local variable or method `c1' for main:Object
from (pry):1:in `<main>'
[2] pry(main)> c1 = Comment.new
=> #<Comment:0x007fed16210830 id: nil, body: nil, dish_id: nil>
[3] pry(main)> c1.body = 'yum'
=> "yum"
[4] pry(main)> c1
=> #<Comment:0x007fed16210830 id: nil, body: "yum", dish_id: nil>
[5] pry(main)> c1.dish.id=24
NoMethodError: undefined method `dish' for #<Comment id: nil, body: "yum", dish_id: nil>
Did you mean?  dish_id
from /Users/sophie/.rbenv/versions/2.4.1/lib/ruby/gems/2.4.0/gems/activemodel-5.1.4/lib/active_model/attribute_methods.rb:432:in `method_missing'
[6] pry(main)> c1.dish.id = 24
NoMethodError: undefined method `dish' for #<Comment id: nil, body: "yum", dish_id: nil>
Did you mean?  dish_id
from /Users/sophie/.rbenv/versions/2.4.1/lib/ruby/gems/2.4.0/gems/activemodel-5.1.4/lib/active_model/attribute_methods.rb:432:in `method_missing'
[7] pry(main)> c1.dish_id = 24
=> 24
[8] pry(main)> c1
=> #<Comment:0x007fed16210830 id: nil, body: "yum", dish_id: 24>
[9] pry(main)> c1.save
=> true
[10] pry(main)> Comment.all
=> [#<Comment:0x007fed13b3d000 id: 2, body: "yum", dish_id: 24>]
[11] pry(main)> exit
 app console
MacBook-Pro-2:orm_goodfoodhunting sophie$ ruby app_console.rb

From: /Users/sophie/wdi/code_alongs/05_database/orm_goodfoodhunting/app_console.rb @ line 9 :

    4: require_relative 'db_config'
    5: require_relative 'models/dish'
    6: require_relative 'models/comment'
    7: require_relative 'models/dish_type'
    8: binding.pry
 => 9: puts ' app console'

[1] pry(main)> dt = Dish_type.new
=> #<Dish_type:0x007fd00631e768 id: nil, name: nil, dish_type: nil, dish_id: nil>
[2] pry(main)> dt
=> #<Dish_type:0x007fd00631e768 id: nil, name: nil, dish_type: nil, dish_id: nil>
[3] pry(main)> dt.dish_type = "Food Art"
=> "Food Art"
[4] pry(main)> dt
=> #<Dish_type:0x007fd00631e768 id: nil, name: nil, dish_type: "Food Art", dish_id: nil>
[5] pry(main)> dt.dish_id = 24
=> 24
[6] pry(main)> dt.save
ActiveRecord::NotNullViolation: PG::NotNullViolation: ERROR:  null value in column "name" violates not-null constraint
DETAIL:  Failing row contains (1, null, Food Art, 24).
: INSERT INTO "dish_types" ("dish_type", "dish_id") VALUES ($1, $2) RETURNING "id"
from /Users/sophie/.rbenv/versions/2.4.1/lib/ruby/gems/2.4.0/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql_adapter.rb:614:in `async_exec'
[7] pry(main)> exit
 app console
MacBook-Pro-2:orm_goodfoodhunting sophie$ ruby app_console.rb
^[[A
From: /Users/sophie/wdi/code_alongs/05_database/orm_goodfoodhunting/app_console.rb @ line 9 :

    4: require_relative 'db_config'
    5: require_relative 'models/dish'
    6: require_relative 'models/comment'
    7: require_relative 'models/dish_type'
    8: binding.pry
 => 9: puts ' app console'

[1] pry(main)> dt = Dish_type.new
=> #<Dish_type:0x007fea4ef80bc0 id: nil, dish_type: nil, dish_id: nil>
[2] pry(main)> dt.dish_type = "Food Art"
=> "Food Art"
[3] pry(main)> dt.dish_id = 24
=> 24
[4] pry(main)> dt
=> #<Dish_type:0x007fea4ef80bc0 id: nil, dish_type: "Food Art", dish_id: 24>
[5] pry(main)> dt.save
=> true
[6] pry(main)> dt
=> #<Dish_type:0x007fea4ef80bc0 id: 1, dish_type: "Food Art", dish_id: 24>
[7] pry(main)> dish_types.all
NameError: undefined local variable or method `dish_types' for main:Object
from (pry):7:in `<main>'
[8] pry(main)> Dish_types.all
NameError: uninitialized constant Dish_types
from (pry):8:in `<main>'
[9] pry(main)> Dish_type.all
=> [#<Dish_type:0x007fea52caec90 id: 1, dish_type: "Food Art", dish_id: 24>]
[10] pry(main)>
```
```From: /Users/sophie/wdi/code_alongs/05_database/orm_goodfoodhunting/app_console.rb @ line 10 :

     5: require_relative 'models/dish'
     6: require_relative 'models/comment'
     7: require_relative 'models/dish_type'
     8: require_relative 'models/user'
     9: binding.pry
 => 10: puts ' app console'

[1] pry(main)> User.count
=> 0
[2] pry(main)> User.all
=> []
[3] pry(main)> u = User.new
=> #<User:0x007fb4e3244f60 id: nil, email: nil, password_digest: nil>
[4] pry(main)> exit
```


```
Password using gem 'bcrypt'
[3] pry(main)> u = User.new
=> #<User:0x007fb00c577e20 id: nil, email: nil, password_digest: nil>
[4] pry(main)> u.email = 'dt@ga.co'
=> "dt@ga.co"
[5] pry(main)> u.password = 'pudding'
=> "pudding"
[6] pry(main)> u
=> #<User:0x007fb00c577e20
 id: nil,
 email: "dt@ga.co",
 password_digest: "$2a$10$y5ipJkEJ8TgULKwWMF6GE.wsWGg6//JyUX1UvpstejyBZFTFGtUsu">
[7] pry(main)> u.save
=> true
[8] pry(main)> user.all
NameError: undefined local variable or method `user' for main:Object
from (pry):8:in `<main>'
[9] pry(main)> User.all
=> [#<User:0x007fb00cd2e5d8
  id: 1,
  email: "dt@ga.co",
  password_digest: "$2a$10$y5ipJkEJ8TgULKwWMF6GE.wsWGg6//JyUX1UvpstejyBZFTFGtUsu">]
[10] pry(main)>
```
gem install bcrypt will take the password such as 'pudding' and then change it to an encrypted text.

```
when bcrypt is checking the password. Are they who they are?
It will run this function:
[11] pry(main)> user = User.find_by(email: 'dt@ga.co')
=> #<User:0x007fb00cb73450
 id: 1,
 email: "dt@ga.co",
 password_digest: "$2a$10$y5ipJkEJ8TgULKwWMF6GE.wsWGg6//JyUX1UvpstejyBZFTFGtUsu">
[12] pry(main)> user.authenticate('cake pudding')
=> false
[13] pry(main)> user.authenticate('pudding')
=> #<User:0x007fb00cb73450
 id: 1,
 email: "dt@ga.co",
 password_digest: "$2a$10$y5ipJkEJ8TgULKwWMF6GE.wsWGg6//JyUX1UvpstejyBZFTFGtUsu">
[14] pry(main)>

This will display a true or false to check if the user matches the password which was input into the text field.

```
def logged_in? #this method returns a boolean
  !!current_user # !! negates the current_user (user object) converting it to a boolean (true or false)
#   if session[:user_id]
#     return true
#   else
#     return false
#   end
end
end
```
