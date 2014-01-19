# Pig Latin Translator

This is a simple app intended to demonstrate a TDD workflow in Rails with
Minitest.

[![Build Status](https://travis-ci.org/joshwlewis/pig_latin.png?branch=master)](https://travis-ci.org/joshwlewis/pig_latin)
[![Coverage Status](https://coveralls.io/repos/joshwlewis/pig_latin/badge.png)](https://coveralls.io/r/joshwlewis/pig_latin)

### Getting started

You'll need a pretty simple stack to run this locally:

- ruby 1.9.3 or 2.0.0 (I reccomend installing with rbenv)
- rubygems (Auto-installed by rbenv)
- postgres 9.x

Once you have all that run:

```bash
bundle install
bundle exec rake db:setup
```

Now, you are setup. You can run the dev server with `rails s`, run the test
suite with `bundle exec rake test`, or watch files and run tests automatically
with `bundle exec guard`.
