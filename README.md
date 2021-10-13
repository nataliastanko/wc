# WC command

Ruby library to imitate the result of running ```wc filename```

Example:

    13    511    3090 text.txt

For the wc line is what ends with the "\n" char

# Requirements

    bundle install
    chmod +x ./bin/wc

# Run

    ./bin/wc data/text.txt

## Test

    rubocop
    rspec

## TODO

- make to work with any file, create filename as param for ./bin/wc
- test if file exist
