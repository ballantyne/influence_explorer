module InfluenceExplorer
  class Contributions
    def initialize(options)
      RestClient.get InfluenceExplorer.base_url + 'contributions.json', options
    end
  end
end