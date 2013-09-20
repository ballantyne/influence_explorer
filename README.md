# InfluenceExplorer

A quick api wrapper for the Sunlight Foundation Influence Explorer api.  I couldn't get the other one to work because of dependencies.

## Installation

Add this line to your application's Gemfile:

    gem 'influence_explorer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install influence_explorer

## Usage
    
    require 'rubygems'
    require 'influence_explorer'
    InfluenceExplorer::Config.api_key = SUNLIGHT_FOUNDATION_KEY
    # get your key here [http://sunlightfoundation.com/api/](http://sunlightfoundation.com/api/)

    InfluenceExplorer::Contributions.new(:contributor_ft => 'Thomas Steyer') 

    # There are many more api endpoints here [http://data.influenceexplorer.com/api](http://data.influenceexplorer.com/api) go look at the documentation.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
