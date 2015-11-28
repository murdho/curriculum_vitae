# Curriculum Vitae

[![Build Status](https://travis-ci.org/murdho/curriculum_vitae.svg)](https://travis-ci.org/murdho/curriculum_vitae)
[![Code Climate](https://codeclimate.com/github/murdho/curriculum_vitae/badges/gpa.svg)](https://codeclimate.com/github/murdho/curriculum_vitae)
[![Test Coverage](https://codeclimate.com/github/murdho/curriculum_vitae/badges/coverage.svg)](https://codeclimate.com/github/murdho/curriculum_vitae/coverage)

This is a small library that helps you to create more personal-looking CV.
It provides a simple way to write down your details, then it builds
an internal structure which can be used for producing different output (JSON, PDF, HTML, ...).

Currently, it only builds the structure, but (hopefully) soon it will start producing
different outputs as well. Stay tuned! 📬

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'curriculum_vitae', github: 'murdho/curriculum_vitae'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ git clone git@github.com:murdho/curriculum_vitae.git
    $ cd curriculum_vitae/
    $ bundle exec rake install

## Usage

### tl;dr

```ruby
# Pass a block with your CV structure:
CurriculumVitae.build do

  # Most important things first:
  name        'Your Name'
  nationality 'Estonian'

  # Other important things, nested:
  contact do
    phones do
      home '+123 456 789'
      work '+234 567 890'
    end
    email 'you@yourdomain.com'
  end

  # ...

  # All kinds of information you want to present...
  whatever 'else'

  # ...nested:
  also do
    supports do
      deeply do
        nested 'stuff'
      end
    end
  end

  # ...and listed:
  with do
    lists do
      item 'one'
      item 'two'
      item 'three'
    end
  end
end
```

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `rake` to run the tests and other code quality checkers. You can also run `bundle console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/murdho/curriculum_vitae.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

