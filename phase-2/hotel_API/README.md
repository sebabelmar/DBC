# Hotel API

We turned the [Hotel AR Drill](https://github.com/sf-sea-lions-2016/active-record-associations-drill-hotels-challenge) into a dummy API.

![](https://raw.githubusercontent.com/sebabelmar/DBC/master/phase-2/hotel_API/pics/hotels_schema.png)

### AR Associations

![alt text](https://raw.githubusercontent.com/sebabelmar/DBC/master/phase-2/hotel_API/pics/Screen%20Shot%202016-04-04%20at%205.27.38%20PM.png)

### CORS resolved
##### Gemfile
```ruby
gem "sinatra-cross_origin", "~> 0.3.1"
```

##### environment.rb

```ruby
require 'sinatra/cross_origin'

configure do
  enable :cross_origin
end
```

### JSON requests

### JSON responses
