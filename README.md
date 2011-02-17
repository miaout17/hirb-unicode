
# Hirb-unicode

`hirb-unicode` fixes the problem that [full-width unicode characters](http://en.wikipedia.org/wiki/Fullwidth_form#Fullwidth_form) is aligned incorrectly.

In the original `hirb` unicode gem, the full-width character will be misaligned: 

    +----+-------------+-------------------------+-------------------------+
    | id | content     | created_at              | updated_at              |
    +----+-------------+-------------------------+-------------------------+
    | 2  | 大樂透後天開獎！    | 2011-02-17 15:28:32 UTC | 2011-02-17 15:28:32 UTC |
    | 3  | Hello,World | 2011-02-17 15:28:40 UTC | 2011-02-17 15:28:40 UTC |
    | 4  | 頭獎上看十八億     | 2011-02-17 15:29:02 UTC | 2011-02-17 15:29:02 UTC |
    | 5  | 海角上看七億      | 2011-02-17 15:29:18 UTC | 2011-02-17 15:29:18 UTC |
    | 6  | こんにちは       | 2011-02-17 15:32:18 UTC | 2011-02-17 15:32:18 UTC |
    +----+-------------+-------------------------+-------------------------+

With `hirb-unicode`, the cells is correctly aligned: 

    +----+------------------+-------------------------+-------------------------+
    | id | content          | created_at              | updated_at              |
    +----+------------------+-------------------------+-------------------------+
    | 2  | 大樂透後天開獎！ | 2011-02-17 15:28:32 UTC | 2011-02-17 15:28:32 UTC |
    | 3  | Hello,World      | 2011-02-17 15:28:40 UTC | 2011-02-17 15:28:40 UTC |
    | 4  | 頭獎上看十八億   | 2011-02-17 15:29:02 UTC | 2011-02-17 15:29:02 UTC |
    | 5  | 海角上看七億     | 2011-02-17 15:29:18 UTC | 2011-02-17 15:29:18 UTC |
    | 6  | こんにちは       | 2011-02-17 15:32:18 UTC | 2011-02-17 15:32:18 UTC |
    +----+------------------+-------------------------+-------------------------+

P.S. If the table is not perfectly aligned in your browser, that's font problem. Checkout the project and type `cat README.md` in your console :)


## Installation

    gem install hirb-unicode

## Usage

This will load `hirb` and `hirb-unicode`, and fix the unicode problem automtically:

    gem 'hirb-unicode'
    require 'hirb-unicode'

If you are using `bundler` (ex. Rails 3), add `hirb-unicode` into your gemfile

    gem 'hirb-unicode'

And run `require 'hirb-unicode'` in your irb console or `.irbrc`

## Dependency

`hirb-unicode` uses `unicode-display_width` gem to calculate width of unicode characters.

## Testing

* `rake test:hirb` loads `hirb` and `hirb-unicode`, run all test of original `hirb` gem. This ensures the original `hirb` functionality is not broken.
* `rake test:unicode` tests functions about unicode string processing.
* `rake test` run both the two tests above.

## License

Read MIT-LICENSE file for details.

