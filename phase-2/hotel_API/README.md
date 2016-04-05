# Hotel API

We turned the [Hotel AR Drill](https://github.com/sf-sea-lions-2016/active-record-associations-drill-hotels-challenge) into a dummy API.

### AR Associations

### CORS resolved

### JSON requests

### JSON responses

#### Modified Code


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
