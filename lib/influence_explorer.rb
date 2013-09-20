require "influence_explorer/version"
require 'rest_client'

module InfluenceExplorer
  def self.base_url
    'http://transparencydata.com/api/1.0/'
  end

  def request(endpoint, options)
    RestClient.get 
  end
end


Dir.glob(File.dirname(__FILE__) + '/influence_explorer/*.rb').each { |f| require f }