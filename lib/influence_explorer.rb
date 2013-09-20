require "influence_explorer/version"
require 'rest_client'

module InfluenceExplorer
  def self.base_url
    'http://transparencydata.com/api/1.0/'
  end

  def self.request(endpoint, options)
    url = base_url + endpoint + CGI::escape(options)
    puts url
    RestClient.get url, 'X-APIKEY' => InfluenceExplorer::Config.api_key
  end
end


Dir.glob(File.dirname(__FILE__) + '/influence_explorer/*.rb').each { |f| require f }