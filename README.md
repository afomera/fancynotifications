# Fancy Notifications

This gem was created to make better flash notifications in my Ruby on Rails applications. To use it follow the installation instructions below. Big thanks to [Mackenzie Child of Unicasts](http://unicasts.com) for inispiring and much of the CSS work in his screencasts. He did the majority of the brains, I just turned it into a gem and plan to add some additional features.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fancynotifications'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancynotifications

## Usage

In your SCSS file add

```scss
 @import 'fancynotifications';
```

In your Javascript file

```javascript
//= require fancynotifications
```

To display the flash notifications in your application.html.erb( or whichever layout) file
```erb
<% flash.each do |key, value| %>
  <div id="notice_wrapper">
    <div class="<%= key %>">
      <a class="alert_close">(X)</a>
      <%= value %>
    </div>
  </div>
<% end %>
```

The important thing to keep in mind is the Javascript looks for the notice_wrapper div and the alert_close class.

The key allows us to style specific types of Flash notices in Rails. Such as "error", "notice", or "success".

### Override Options
To override the text color or background of the notifications add this above your SCSS import statement.

```scss
$notification_text: #FFFFFF;
$notification_background: rgba(201, 70, 70, 0.85);

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fancynotifications/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
