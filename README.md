# i_to_kan

This gem is an extension to the Integer class that converts numbers to Japanese characters, kansuji.

半角数字を漢数字に変換するIntegerクラスの拡張です。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i_to_kan'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install i_to_kan

## Usage

```ruby
0.to_kan
=> "零"

1234567890987654321.to_kan
=> "百二十三京四千五百六十七兆八千九百九億八千七百六十五万四千三百二十一"

(9 ** 75).to_kan
=> "三千六百九十九無量大数八千八百四十八不可思議五千三十五那由他千二百六十九阿僧祇七千二百九十二恒河沙四千七百極七千八百二十四載五千百六十九正六千六百四十四澗千八百六十四溝七千三百十穣三百八十九𥝱七千二百二十九垓七千三百八十一京五千百八十四兆四千五十三億百七十四万八千二百四十九"
```
```ruby
(1..100).each do |i|
  User.create(email: "user+#{i}@example.com", name: "顧客#{i.to_kan}郎")
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/i_to_kan. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/kokisone/i_to_kan/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IToKan project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kokisone/i_to_kan/blob/master/CODE_OF_CONDUCT.md).
