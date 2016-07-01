# Materialize::Sass

Materialize-sass is a Sass-powered version of Materializecss.com, ready to drop right into your Sass powered applications.

`based on current version v0.97.6`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'materialize-sass', :git => 'git://github.com/amirolahmad/materialize-sass.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install materialize-sass

## Usage

Ensure that the `sass-rails` gem is present - it is added to new Rails applications by default

Import Materialize styles in app/assets/stylesheets/application.scss:

```ruby
@import "materialize";
```

Make sure the file has `.scss` extension (or `.sass` for Sass syntax). If you have just generated a new Rails app, it may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so rename it:

```ruby
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

Then, remove all the `*= require_self` and `*= require_tree .` statements from the sass file. Instead, use `@import` to import Sass files.

Require Materialize Javascripts in app/assets/javascripts/application.js:

```ruby
//= require materialize
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AmirolAhmad/materialize-sass.
