require "influence_explorer/version"
require 'rest_client'
require 'erb'
require 'hashie'
require 'json'

module InfluenceExplorer
  def self.base_url
    'http://transparencydata.com/api/1.0/'
  end

  def self.request(endpoint, options)
    opts = options.merge('apikey' => InfluenceExplorer::Config.api_key)
    url = base_url + endpoint + "?" + opts.to_query
    # puts url
    response = JSON.parse(RestClient.get(url).to_str).collect {|i| Hashie::Mash.new(i) }
    response
  end
end

class Hash 
  def to_query 
    self.map{|k,v| "#{CGI.escape(k.to_s)}=#{CGI.escape(v)}"}.join("&") 
  end 
end


Dir.glob(File.dirname(__FILE__) + '/influence_explorer/*.rb').each { |f| require f }